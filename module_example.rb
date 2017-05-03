module Vehicle

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn (new_direction)
    @direction = new_direction

  end

end


class Car

  def initialize
    @speed = 0
    @direction = 0
  end

  include Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  
  include Vehicle

  def initialize
    @speed = 0
    @direction = 0
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
p bike.brake