class Product < ActiveRecord::Base
  attr_accessible :author, :borrowed, :description, :price, :publisher, :purchased_at, :purchased_on, :title
  def unb
    value = Product.borrowed
  end
end
