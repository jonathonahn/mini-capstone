Rails.application.routes.draw do
  get "/all_products", controller: "products", action: "all_products"
  get "/first_product", controller: "products", action: "first_product"
  get "/find_item", controller: "products", action: "find_item"
  get "/find_item/:name", controller: "products", action: "find_item"
end
