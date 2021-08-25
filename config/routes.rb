Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"
  get "/first_product", controller: "products", action: "first_product"
  get "philodendron", controller: "products", action: "philodendron"
end
