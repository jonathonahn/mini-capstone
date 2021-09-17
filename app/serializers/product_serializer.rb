class ProductSerializer < ActiveModel::Serializer
  attributes :current_user, :id, :name, :price, :description, :is_discounted?, :tax, :total, :inventory_count, :friendly_created_at

  belongs_to :supplier
  has_many :images
  has_many :categories 
end
