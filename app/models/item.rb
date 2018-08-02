class Item < ApplicationRecord
  has_and_belongs_to_many :categories
  validates :name, length: { in: 2..20 }
  validates :price, presence: true
  alias_attribute :label, :name
  validates :label, presence: true
end
