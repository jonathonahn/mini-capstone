Image.create!([
  {url: "asdfasdf", product_id: 2}
])
Supplier.create!([
  {name: "Classics Flowers and Confections", email: "rosa@classicsflowers.com", phone_number: "714-828-5611"},
  {name: "1-800-FLOWERS", email: "support@1800flowers.com", phone_number: "1-800-416-4710"},
  {name: "Evergreen Nursery", email: "support@evergreennursery.com", phone_number: "714-537-8877"}
])
Product.create!([
  {name: "Orchid", price: "15.0", description: "Pretty plant.", inventory_count: 2, supplier_id: 2},
  {name: "Succulent", price: "5.0", description: "Easy to care for.", inventory_count: 1, supplier_id: 4}
])
