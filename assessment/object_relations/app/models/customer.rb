require 'pry'
class Customer
  @@customers =[ ]
  @@review = {}
  attr_accessor :name

  def initialize(name)
    @name = name
    @@customers << @name
  end

  def self.all
    @@customers
  end
  def self.review
    @@review
  end

  def self.find_by_name(name)

    @@customers.find do |customer|
      name == customer
    end

  end

  def add_review(review,restaurant_name)
    @@review[Restaurant.new(restaurant_name)] = review
  end

end
puts raj = Customer.new("raj")
puts mohan = Customer.new("mohan")


# Customer.new('bob')
# <>
# customer = customer.add_review('it was good', Restaurant.new)
# result: a new review tied ot the restaurant, and tied to the customer
