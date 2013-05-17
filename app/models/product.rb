class Product < ActiveRecord::Base
  attr_accessible :author, :borrowed, :description, :price, :publisher, :purchased_at, :purchased_on, :title

  has_many :borrow_histories

  scope :borrowed, where(borrowed: true)
  scope :unborrowed, where(borrowed: false)
end
