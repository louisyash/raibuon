class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :performance
  monetize :amount_cents

  validates :amount, presence: true


  AMOUNT = [100, 300, 500, 1000]
end
