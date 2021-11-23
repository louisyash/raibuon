class Performance < ApplicationRecord
  belongs_to :artist, dependent: :destroy
  has_many :tips, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :start_time, presence: true

end
