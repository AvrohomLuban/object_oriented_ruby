class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active
  def initialize(input_hash)
    @first_name = input_hash[:first_name] ||= "empty"
    @last_name = input_hash[:last_name] ||= "empty"
    @salary = input_hash[:salary] ||= "empty"
    @active = input_hash[:active] ||= "empty"
  end
  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end
  def give_annual_raise
    @salary = @salary * 1.05
  end

  def full_name
    if @last_name[-1,1] == "s" #[-1,1] returns last letter of string 
      return @first_name + " " + @last_name + " " + ",Esquire"
    else return @first_name + " " + @last_name
    end
  end
end


emplyee1 = Employee.new(first_name: "majora", last_name: "carter", salary: 10000, active: true)
emplyee2 = Employee.new(first_name: "danilo", last_name: "campos", salary: 10000, active: true)
emplyee3 = Employee.new()

p emplyee1.full_name
p emplyee2.full_name
p emplyee3.full_name
