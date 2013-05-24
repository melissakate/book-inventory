class Product < ActiveRecord::Base
  attr_accessible :author, :borrowed, :description, :price, :publisher, :purchased_at, :purchased_on, :title

  has_many :borrow_histories

  def mborrowed
      borrow_histories.where(:returned_on => nil)
    borrow_histories.collect do |bn|
     bn.product
    end
  end
    
  def munborrowed
    borrow_histories.where(:returned_on !=  nil)
    value.collect do |bn|
    bn.product_id
    end
  end
end
