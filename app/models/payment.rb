class Payment < ApplicationRecord
  belongs_to :user
  has_many :category_payments
  has_many :categories, through: :category_payments

  validates_presence_of :name, :amount
  validates :amount, numericality: { greater_than_or_equal_to: 1 }
end
