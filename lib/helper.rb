class Integer
  def f2c
    "#{((self.to_f - 32.0) * 0.5556)}°C"
  end
  def c2f
    "#{(self.to_f / 0.5556) + 32}°F"
  end
  def deg
    "#{self.to_f}°"
  end
end
class Float
  def f2c
    "#{((self.to_f - 32.0) * 0.5556)}°C"
  end
  def c2f
    "#{(self.to_f / 0.5556) + 32}°F"
  end
  def deg
    "#{self.to_f}°"
  end
end