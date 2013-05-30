class Product < ActiveRecord::Base
  attr_accessible :author, :borrowed, :description, :price, :publisher, :purchased_at, :purchased_on, :title

  has_many :borrow_histories, dependent: :destroy

  def self.mborrowed
    borrowed = BorrowHistory.where(returned_on: nil).all
    @products = borrowed.collect do |bh| bh.product end
  end
    
  def munborrowed
  end
end
