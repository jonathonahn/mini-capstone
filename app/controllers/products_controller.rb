class ProductsController < ApplicationController

  def all_products
    product = Product.all
    render json: product
  end

  def first_product
    product = Product.first 
    render json: product
  end

  def philodendron
    product = Product.find_by(name: "Philodendron")
    render json: product
  end

end
