class Image < ApplicationRecord
  belongs_to :product
  validates :url, :product_id, presence: true 
end
