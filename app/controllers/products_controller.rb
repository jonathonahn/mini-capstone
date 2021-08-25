class ProductsController < ApplicationController
  def all_products
    product = Product.all
    render json: product
  end
end
