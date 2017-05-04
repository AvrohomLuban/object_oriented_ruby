# Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes. 
# Each person should automatically be given an account number which is a randomized ten digit number.
# After the user is finished, the program should print out all the users, for example:
# FIRST NAME: Joan
# LAST NAME: Kelson
# EMAIL: jkelson@juno.com
# ACCT #: 2372041038
# and so on for all the users.
# ****Bonus*****
# Continue with Exercise 3: Expand the program so a user gets all the account info by entering an account number i.e. prompt the user to enter an account number, and output the first_name, last_name, etc.
# Also continue with exercise 3: reject a user entering an account if the email address doesn’t have an “@” and doesn’t end in “.com” Prompt the user to try again if this happens.

require "faker"

customers = []

2.times do
  puts "enter first name"
  first_name = gets.chomp
  puts "enter last name"
  last_name = gets.chomp

  email = "blank"
  until email.include?("@") && email[-1] == "m" && email[-2] == "o" && email[-3] == "c" && email[-4] == "."
    puts "enter email address"
    email = gets.chomp
  end
   customers << {first_name: first_name, last_name: last_name, email: email, account_number: Faker::Number.number(10)}
end

customers.each do |customer|
  puts """FIRSTNAME: #{customer[:first_name]}
  LASTNAME: #{customer[:last_name]}
  EMAIL: #{customer[:email]}
  ACCOUNT#: #{customer[:account_number]}
  """
end

#one way to get customer info based on account number, loop through all account and find
#matching account number... if are lots of accounts, probably not such good idea though
puts "enter account number please"
input = gets.chomp
customers.each do |customer|
  if customer[:account_number] == input
    puts "welcome #{customer[:first_name]} #{customer[:last_name]}"
  end
end

#other way to do sois create a new var named by customer number that has his info in it





