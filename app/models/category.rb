class Category < ApplicationRecord
  belongs_to :user
  has_many :category_payments
  has_many :payments, through: :category_payments

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 4, maximum: 50 }
  validates :icon, presence: true
end
