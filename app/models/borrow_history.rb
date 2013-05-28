class BorrowHistory < ActiveRecord::Base
  attr_accessible :borrowed_by, :returned_on
    belongs_to :product

   
end
