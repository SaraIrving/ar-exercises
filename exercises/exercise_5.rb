require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# output the total revenue for the entire company using .sum method
sum =  Store.sum(:annual_revenue)
puts "The total annual revenue is #{sum}"

# output average annual revenue for all stores
num_stores = Store.count
average_per_store = sum / num_stores
puts "The average annual revenue for all stores is #{average_per_store}"

# output the number of stores that are generating 1 million plys in annual sales
mill_stores = Store.where("annual_revenue >= 1000000").count
puts "The number of stores generating $1 million or more annually: #{mill_stores}"