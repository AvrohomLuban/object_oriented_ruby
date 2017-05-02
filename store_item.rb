# chocolate = {brand: "hersheys", model: "white", price: 4.99}
# candy = {brand: "jolly ranchers", model: "Awesome tawesome", price: 3.99}
# chips = {brand: "lays", model: "bbq", price: 1.99}

# puts "we are selling #{chocolate[:brand]} #{chocolate[:model]} for only #{chocolate[:price]}"
# puts "we are selling #{candy[:brand]} #{candy[:model]} for only #{candy[:price]}"
# puts "we are selling #{chips[:brand]} #{chips[:model]} for only #{chips[:price]}"

# chocolate = {:brand => "hersheys", :model => "white", :price => 4.99}
# candy = {:brand => "hersheys", :model => "white", :price => 3.99}
# chips = {:brand => "hersheys", :model => "white", :price => 1.99}

class Store

  def initialize (brand, model, price)
    @brand = brand
    @model = model
    @price = price
  end

  def brand
    return @brand
  end

  def model
    return @model
  end

  def price
    return @price
  end

  def price= (x)
    @price = x
  end

end

chocolate = Store.new("hersheys", "white", 4.99)
candy = Store.new("jollly ranchers", "Awesome twosome", 3.99)
chips = Store.new("lays", "bbq", 1.99)

p chocolate.brand
p chocolate.model
p chocolate.price


