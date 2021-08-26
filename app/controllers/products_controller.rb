class ProductsController < ApplicationController

  def all_products
    product = Product.all
    render json: product.as_json
  end

  def first_product
    product = Product.first
    render json: product.as_json
  end

  def find_item
    product = Product.find_by(name: params[:name]) #also works as params[:name]
    render json: product.as_json
  end

end
