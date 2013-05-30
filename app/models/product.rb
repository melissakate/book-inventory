class Product < ActiveRecord::Base
  attr_accessible :author, :borrowed, :description, :price, :publisher, :purchased_at, :purchased_on, :title
  has_many :borrow_histories, dependent: :destroy
  validates :title, :description, :author, :publisher,  presence: true

end
