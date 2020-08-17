require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# make 3 more stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# find stores that carry mens clothing
@mens_stores = Store.where(mens_apparel: true)

# for each store in @mens_stores, output their name and annual revenue
for location in @mens_stores
  puts "name = #{location.name}, annual revenue = #{location.annual_revenue}"
end

# fetch stores that carry womens apparel and make less than 1 mill in annual revenue
@womens_undermill_stores = Store.where("annual_revenue <= 1000000", womens_apparel: true)

