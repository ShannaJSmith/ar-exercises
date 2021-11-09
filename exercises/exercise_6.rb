require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Inuyasha", last_name: "Takahashi", hourly_rate: 80)
@store1.employees.create(first_name: "Sesshomaru", last_name: "Takahashi", hourly_rate: 200)
@store2.employees.create(first_name: "Shanna", last_name: "Smith", hourly_rate: 56)
@store2.employees.create(first_name: "Kim", last_name: "Troung", hourly_rate: 90)
@store2.employees.create(first_name: "Jasmin", last_name: "Dhillon", hourly_rate: 90)