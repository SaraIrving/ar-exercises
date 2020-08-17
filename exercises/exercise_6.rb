require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurran", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Glen", last_name: "Chua", hourly_rate: 60)
@store1.employees.create(first_name: "Hanna", last_name: "Oh", hourly_rate: 60)

@store2.employees.create(first_name: "Sara", last_name: "Kate", hourly_rate: 50)
@store2.employees.create(first_name: "Nat", last_name: "Yuz", hourly_rate: 50)
@store2.employees.create(first_name: "Caroline", last_name: "Jepps", hourly_rate: 65)