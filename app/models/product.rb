class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :category
  belongs_to :size
end
