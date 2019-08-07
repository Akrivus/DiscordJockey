require 'discordrb'

require_relative 'lib/helper.rb'

def safe_eval formula
  attempts = 0
  begin
    return eval(formula).to_s
  rescue NameError => e
    terms = e.message.scan(/`([^']+)'/).flatten
    terms.each do |term|
      formula = formula.gsub(term, "\"#{term}\"")
    end
    attempts += 1
    retry if attempts < 20
    return formula
  end
  return formula
end
def markup message
  formulas = message.scan(/`([^`]+)`/).flatten
  sample = message
  if not formulas.empty?
    formulas.each do |formula|
      begin
        message = sample
        sample = sample.gsub("`#{formula}`", safe_eval(formula))
      rescue => e
        sample = message
        next
      end
    end
  end
  sample
end

BOT = Discordrb::Bot.new type: :user, token: File.read('token')
BOT.should_parse_self = true
BOT.message do |event|
  if BOT.bot_user == event.author
    break if event.text.match? /^[!~]/
    message = markup(event.text)
    if not message == event.text
      event.message.edit(message)
    end
  end
end
BOT.run