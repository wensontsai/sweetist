class Cart < ActiveRecord::Base
  has_many :cart_items

  attr_accessor :items, :user_id

  def initialize
    @items = []
  end

  def add_to_cart(product)
    @items << product
  end


end
