class BorrowHistoryController < ApplicationController
  
  def index 
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_history.all
  end
  
  def new
    @borrow_history = BorrowHistory.new
    @product = Product.find(params[:product_id])


  end
 def create 
    @product = Product.find(params[:product_id])

  end
  
 
end
