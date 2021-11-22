class Artist < ApplicationRecord
  has_many :performances
  belongs_to :user
end
