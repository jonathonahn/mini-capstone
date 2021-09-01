class Product < ApplicationRecord
  belongs_to :supplier

  # def supplier
  #   Supplier.find(supplier_id)
  # end
  
  def is_discounted?
    price < 10
  end

  def tax
    price * 0.09
  end

  def total
    price * 1.09
  end

  def friendly_created_at
    created_at.strftime("%b %e, %l:%M %p")
  end

end