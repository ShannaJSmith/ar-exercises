require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "the total revenue for all stores is #{total_revenue}"

total_average_revenue = Store.average(:annual_revenue)
puts "the average revenue for all stores is #{total_average_revenue}"

million_revenue = Store.where("annual_revenue >= 1000000").count
puts "there are #{million_revenue} stores generating $1M or more in annual sales."
