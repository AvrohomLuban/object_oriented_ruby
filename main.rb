require "./module.rb"
require "./gummy.rb"
require "./food.rb"

food = Food.new({color: "Red", price: 3.99, flavour: "cherry", size: "large", shelf_life: 20})
gummy = Gummy.new(color: "purple", price: 1, flavour: "grape", size: "s")
p food
p food.shelf_life
p food.taste