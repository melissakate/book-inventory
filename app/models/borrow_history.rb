class BorrowHistory < ActiveRecord::Base
  attr_accessible :borrowed_by
    belongs_to :products
end
