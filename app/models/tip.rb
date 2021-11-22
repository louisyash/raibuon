class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :performance

  validates :amount, presence: true
end
