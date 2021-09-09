class ProductsController < ApplicationController

  def index
    if current_user
      products = Product.all 
      render json: products 
    else  
      render json: {message: "You must be logged in to view."}
    end
  end

  def create
    product = Product.new(
      name: "#{params[:name]}",
      price: params[:price],
      description: "#{params[:description]}",
      supplier_id: params[:supplier_id]
    )
    if product.save 
      render json: product
    else
      render json: product.errors.full_messages
    end
  end

  def show
    product = Product.find(params[:id]) 
    render json: product
  end

  def update
    product = Product.find(params[:id]) 
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description
    product.supplier_id = params[:supplier_id] || product.supplier_id
    if product.save 
      render json: product
    else
      render json: product.errors.full_messages
    end
  end
  
  def destroy
    product = Product.find(params[:id]) 
    product.destroy
    render json: {
      message: "destruction complete."
    }
  end

end
