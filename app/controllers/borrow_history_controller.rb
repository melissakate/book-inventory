class BorrowHistoryController < ApplicationController
  
  def index 
   
     @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_history.all
  end
  def new
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_history.new
  end
 def create 
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_history.new

  end
  
 
end
