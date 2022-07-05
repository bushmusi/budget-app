class CategoryPayment < ApplicationRecord
  belongs_to :payment
  belongs_to :category
end
