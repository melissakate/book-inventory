class BorrowHistory < ActiveRecord::Base
  attr_accessible :borrowed_by
    has_many :product
end
