class Coordinate
  def self.to_decimal(input)
    degree, minute, second, milisecond = input.split('.')
    degree.to_f + minute.to_f/60 + second.to_f/3600 + milisecond.to_f/3600000
  end
end
