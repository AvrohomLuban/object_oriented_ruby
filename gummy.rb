require "./module.rb"

class Gummy

include Yummy

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