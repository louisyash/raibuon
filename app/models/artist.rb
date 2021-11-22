class Artist < ApplicationRecord
  has_many :performances, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true

end
