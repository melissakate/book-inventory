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
    @products = Product.find(params[:id])

    end
def new
    @products = Product.new
    end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @products = Product.new(params[:product])
    @products.save
    redirect_to products_path
  end

  # PUT /products/1
    redirect_to products_path
  def update
    @product = @Product.find params[:id]
    @product.update_attributes(params[:product])
    redirect_to products_path 
  end

  # DELETE /products/1
    
  def destroy
    @products = Product.find(params[:id])
    @products.destroy

    end
end
