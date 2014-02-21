class CartItem < ActiveRecord::Base
  belongs_to :user
  has_many :vendors
  has_many :products
  has_many :orders
end
