class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    cartedproducts = current_user.carted_products.where(status: "carted")
    render json: cartedproducts
  end

  def create
    cartedproduct = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      order_id: nil,
      quantity: params[:quantity],
      status: "carted"
    )
    if cartedproduct.save 
      render json: cartedproduct
    else  
      render json: cartedproduct.errors.full_messages
    end
  end

  def update
    cartedproduct = CartedProduct.find_by(params[:id])
    cartedproduct.product_id = params[:product_id] || cartedproduct.product_id 
    cartedproduct.quantity = params[:quantity] || cartedproduct.quantity
    cartedproduct.order_id = params[:order_id] || cartedproduct.order_id
  end


end
