class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :performance

  validates :amount, presence: true

  AMOUNT = [5, 10, 50, 100, 500, 1000, 5000, 10_000]
end
