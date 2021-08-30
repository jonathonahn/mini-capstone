require "http"
system "clear"
# puts "Which product are you modifying?"
# id_input = gets.chomp.to_i
# puts "What product are you adding?"
# name_input = gets.chomp
# puts "What is the price?"
# price_input = gets.chomp.to_i
# puts "What is the description?"
# description_input = gets.chomp


# # HTTP.post("http://localhost:3000/products/", :form => {
# #   name: "#{name_input}",
# #   price: "#{price_input}",
# #   description: "#{description_input}"
# #   })

# HTTP.patch("http://localhost:3000/products/#{id_input}", :form => {
#     name: "#{name_input}",
#     price: "#{price_input}",
#     description: "#{description_input}"
#     })

# response = HTTP.get("http://localhost:3000/products/")
# print JSON.pretty_generate(response.parse(:json))

HTTP.delete("http://localhost:3000/products/7")