class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = Product.all

    end
  def borrowedform
     @products = Product.find(params[:id])
  end

  def borrowedbooks
    @products = Product.all
  end

  def unborrowed
    @products = Product.all
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    end
  def new
    @product = Product.new
    end

  # GET /products/1/edit
  def edit
  @product = Product.find(params[:id])
  @product.update_attributes(params[:product])
   end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])
    @product.save
    redirect_to products_path
  end

  # PUT /products/1
  def update
     @product = Product.find(params[:id])
  @product.borrowed = false
    @product.save
 redirect_to products_path 
  end

  # DELETE /products/1
    
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    end
end
