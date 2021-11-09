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
class Employee < ApplicationRecord
  validates :first_name, prescence: true
  validates :last_name, prescence: true
  validates hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  # could also try :inclusion => 40..200
  validates :store_id, prescence: true
end

class Store < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }  # could also use greater_than_or_equal_to: 0
  validate :must_have_clothes

  def must_have_clothes
    if mens_apparel == false && womens_apparel == false
      errors.add(:must_have_clothes, "Stores must have mens or womens apparel")
    end
  end
end
