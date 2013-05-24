class Product < ActiveRecord::Base
  attr_accessible :author, :borrowed, :description, :price, :publisher, :purchased_at, :purchased_on, :title

  has_many :borrow_histories

  def borrowed
    # if merong borrow_history na walang returned_on
    borrow_histories.where(:returned_on => nil)
    borrow_histories.collect do |bh|
      bh.product
    end
  end

  def unborrowed
  end
end
