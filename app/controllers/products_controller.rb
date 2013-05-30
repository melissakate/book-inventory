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
    bomb = BorrowHistory.where(returned_on: nil)
    @products = bomb.collect{|bh| bh.product}
    render "index"
  end

  def unborrowed    
    products_without_borrow_histories = Product.all.collect{ |p| p.borrow_histories.blank? ? nil : p }.compact
    products_with_borrow_histories = Product.all.collect{ |p| p.borrow_histories.blank? ? p : nil }.compact

    product_ids_of_returned_books = BorrowHistory.select('DISTINCT product_id').where('returned_on IS NOT NULL').collect{ |bh| bh.id }
    returned_products = Product.where(id: product_ids_of_returned_books)

    @products = products_without_borrow_histories + returned_products + products_with_borrow_histories
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
