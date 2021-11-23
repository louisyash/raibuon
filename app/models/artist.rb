class Artist < ApplicationRecord
  has_one_attached :photo
  has_many :performances, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, uniqueness: true

end
