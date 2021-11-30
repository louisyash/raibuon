class Artist < ApplicationRecord
  has_one_attached :photo
  has_many :performances, dependent: :destroy
  has_many :tips, through: :performances
  belongs_to :user

  validates :name, presence: true, uniqueness: true

end
