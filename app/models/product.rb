class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {greater_than: 0 }
  validates :description, length: { in: 10..500 }
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