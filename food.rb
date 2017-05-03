require "./module.rb"

class Food < Gummy

  include Yummy

  attr_reader :shelf_life

  def initialize(input_hash)
    super
    @shelf_life = input_hash[:shelf_life]
  end

end