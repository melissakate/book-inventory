class BorrowHistoriesController < ApplicationController

  def new
     @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_histories.new 
  end

  def create
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_histories.new
    @borrow_history.borrowed_by = params[:borrowed_by]
    @product.update_attributes(:borrowed => true)
    @borrow_history.save
    redirect_to fborrowed_products_path
  end
  
  def update
    @product = Product.find(params[:product_id])
    @product.update_attributes(:borrowed => false)    
    @borrow_histories = @product.borrow_histories.find(params[:id])
    @borrow_histories.update_attributes(:returned_on => Time.now)
    redirect_to funborrowed_products_path
  end

  def index
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_histories.all
  end

  def show
    @product = Product.find(params[:product_id])
    @borrow_history = @product.borrow_histories.all
  end

end
