class BorrowHistoriesController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_histories.all
  end

  def show
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_histories.all
  end
end
