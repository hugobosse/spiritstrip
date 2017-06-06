class Size < ApplicationRecord
  validates :volume, presence: true
  validates :name, presence: true

end
