class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  belongs_to :category
  belongs_to :size

  monetize :price_cents  # or :price_pennies

end
