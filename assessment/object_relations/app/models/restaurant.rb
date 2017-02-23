class Restaurant
  attr_accessor :restaurant_name
 @@review = Hash.new
  @@restaurants =[ ]



  def initialize(restaurant_name)
    @name = restaurant_name
    @@restaurants << @name
  end

  def self.all
    @@restaurants
  end
  def self.review
    @@review
  end
  def self.find_by_name(name)

    @restaurants.find do |customer|
      name == customer
    end

  end

  def add_review(review,customer_name)
    @@review[Customer.new(customer_name)]= review
  end




end
