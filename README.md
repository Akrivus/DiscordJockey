# DiscordJockey

A self-bot framework for Discord that is used for parsing and solving formulas embedded within messages. Useful for people who are too lazy to do mental math and just want to have a REPL eval it, or have your own account do something automatically.

## Assertations

* The self-bot uses YOUR account, it is not a bot for others to interact it, unless you program it to behave in that manner, which I wouldn't do given the perception of self-bots.
* Ideally, this was meant to be used for message parsing, for example, solving formulas embedded inside messages and more. In the future, I may work on a logging feature.

## Features

* Runs `eval` on text that is marked with code tildes, if it fails due to a NameError, it casts the unknown variable to a string since that's what is assumed you're trying to do.
* Ignores messages starting with `!` or `~` due to commands.

## Plans

* Soundboard features? I don't think Discord allows simultaneous voice streaming though.
* I want to avoid configurations, but if necessary, a web panel.
* More helper functions (customary - metric converter, date calculator, forecasts, etc.)
* Auto-responder? Tying into the web panel piece.
* Chatbot functionality? At this point it becomes a full on self-bot though.
