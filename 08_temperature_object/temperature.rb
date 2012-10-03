class Temperature
  def ftoc far
    (far - 32.0) * 5.0 / 9.0
  end

  def ctof cel
    cel * 9.0 / 5.0 +32.0
  end

  def initialize value={}
    if value[:c]
      @cels=value[:c]
    elsif value[:f]
      @cels=ftoc value[:f]
    end
  end

  def in_fahrenheit
    ctof @cels
  end

  def in_celsius
    @cels
  end

  def self.from_celsius cel
    Temperature.new(:c => cel)
  end

  def self.from_fahrenheit far
    Temperature.new(:f => far)
  end

end

class Celsius < Temperature
  def initialize cel
    super :c => cel
  end
end

class Fahrenheit < Temperature
  def initialize far
    super :f => far
  end
end