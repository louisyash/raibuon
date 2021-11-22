class Artist < ApplicationRecord
  has_many :performances
  belongs_to :user

  validates :name, presence: true, uniqueness: true

end
