class BorrowHistoriesController < ApplicationController
  
  def index 
    @borrow_history = BorrowHistory.all
  end
  
  def new
    @borrow_history = BorrowHistory.new
    @product = Product.find(params[:product_id])


  end
 def create 
    @product = Product.find(params[:product_id])

  end
  
 
end
