class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle

  attr_reader :fuel, :make, :model
  attr_writer :fuel

  def initialize
    super
    @fuel = 250
    @make = "toyota"
    @model = "camry"

  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end


class Bike < Vehicle

  def initialize
    super
    @make = "mountain bike"
    @model = "sports gear"
  end

  def ring_bell
    puts "Ring ring!"
  end

end

bike = Bike.new
car = Car.new
p car.fuel
car.fuel = 200
p car.fuel
p car.make
car.honk_horn