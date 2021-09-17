class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    cartedproducts = current_user.carted_products.where(status: "carted")
    render json: cartedproducts
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      order_id: params[:order_id],
      quantity: params[:quantity],
      status: "carted"
    )
    if carted_product.save 
      render json: carted_product
    else  
      render json: {errors: carted_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    carted_product = CartedProduct.find(params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "Carted product DESTROYED (removed from cart)"}
  end


end
