class SuppliersController < ApplicationController
  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def create
    supplier = Supplier.new(
      name: "#{params[:name]}",
      email: params[:email],
      phone_number: "#{params[:phone_number]}"
    )
    supplier.save
    render json: supplier
  end

  def show
    supplier = Supplier.find(params[:id]) 
    render json: supplier
  end

  def update
    supplier = Supplier.find(params[:id]) 
    supplier.name = params[:name] || supplier.name
    supplier.email = params[:email] || supplier.email
    supplier.phone_number = params[:phone_number] || supplier.phone_number
    supplier.save
    render json: supplier
  end
  
  def destroy
    supplier = Supplier.find(params[:id]) 
    supplier.destroy
    render json: {
      message: "destruction complete."
    }
  end
end
