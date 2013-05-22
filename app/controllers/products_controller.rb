class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  # kwestyonable
  def edit
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
    @product.save
  end

  # what if di na-save si product?
  # example: nag-fail yung validation
  def create
    @product = Product.new(params[:product])
    @product.borrowed = false
    @product.save
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
    redirect_to products_path 
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path 
  end

  def borrowed
    @products = Product.borrowed
    render "index"
  end

  def unborrowed
    @products = Product.unborrowed
    render "index"
  end








  
  #def borrowform
  #  @products = Product.find(params[:id])
  #end

  #def updateborrowed
  #  @products = Product.find(params[:id])
  #  @products.borrowed_by = params[:borrowed_by]
  #  @products.borrowed = true
  #  @products.save
  #  @borrow_history = @products.borrow_histories.new
  #  @borrow_history.borrowed_by = @products.borrowed_by
  #  @borrow_history.save
  #  redirect_to products_path
  #end

end
