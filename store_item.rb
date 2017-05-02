class Gummy

 attr_reader :color, :price, :flavour, :size
 #attr_writer :price
 attr_accessor :price

 def initialize(input_hash)
   @color = input_hash[:color]
   @price = input_hash[:price]
   @flavour = input_hash[:flavour]
   @size = input_hash[:size]
 end

 def price=(new_price)
   @price = new_price
 end
end
gummy = Gummy.new({color: "Red", price: 3.99, flavour: "cherry", size: "small"})

class Food < Gummy

  attr_reader :shelf_life

  def initialize(input_hash)
    super
    @shelf_life = input_hash[:shelf_life]
  end

end

food = Food.new({color: "Red", price: 3.99, flavour: "cherry", size: "large", shelf_life: 20})
gummy = Gummy.new(color: "purple", price: 1, flavour: "grape", size: "s")
p food
p food.shelf_life



