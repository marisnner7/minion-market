class OrderToProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order
end
