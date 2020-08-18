require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# ask the user for a store name and store it in a variable
print "Enter a store name > "
answer = gets.chomp

# try to create a store with that name but leave out all other fields 

new = Store.create(name: answer)

puts new.valid?
puts new.errors.messages


