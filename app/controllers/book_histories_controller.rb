class BorrowHistoriesController < ApplicationController
  
  def show 
     @product = Product.find(params[:product_id])
 @borrow_history = @product.borrow_histories.all
  end
  
  def new
    @borrow_history = BorrowHistory.new
    @product = Product.find(params[:product_id])


  end
 def create 
    @product = Product.find(params[:product_id])

  end
  
 
end
