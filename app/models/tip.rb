class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :performance

  validates :amount, presence: true

  AMOUNT = [100, 300, 500, 1000, "Custom"]
end
