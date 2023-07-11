class Cash < ApplicationRecord
  validates :quantity, numericality: { in: 0..999 }
end
