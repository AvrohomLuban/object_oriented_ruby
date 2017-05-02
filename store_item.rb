class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active
  def initialize(input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @salary = input_hash[:salary]
    @active = input_hash[:active]
  end
  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end
  def give_annual_raise
    @salary = @salary * 1.05
  end
end
Add Comment Collapse


