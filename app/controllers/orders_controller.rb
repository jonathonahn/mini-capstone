class OrdersController < ApplicationController
  def index
    if current_user
      orders = Order.where(user_id: current_user.id)
      render json: orders
    else  
      orders = Order.all 
      render json: orders 
    end
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
    if current_user
      if current_user.id != order.user_id 
        render json: {message: "this is not your order"}
      else 
        render json: order 
      end
    else 
      render json: order
    end
  end
end
