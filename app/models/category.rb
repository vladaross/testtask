class Category < ApplicationRecord
  has_and_belongs_to_many :items
  validates :name, length: { in: 2..20 }
end
