class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    orders = current_user.orders 
    render json: orders 
  end

  def create
    order = Order.new(
      user_id: current_user[:id],
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    order.subtotal = order.product.price * order.quantity
    order.tax = order.product.tax * order.quantity
    order.total = order.subtotal + order.tax
    order.save 
    render json: order
  end

  def show
    order = Order.find(params[:id])
    render json: order 
  end
end
