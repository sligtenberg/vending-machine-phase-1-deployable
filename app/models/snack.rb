class Snack < ApplicationRecord
  validates :name, length: { in: 1..12 }
  validates :price, numericality: { in: 0..25 }
  validates :quantity, numericality: { in: 0..999 }
end
