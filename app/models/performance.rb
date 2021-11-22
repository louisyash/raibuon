class Performance < ApplicationRecord
  belongs_to :artist
  has_many :tips

  validates :name, presence: true
  validates :address, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
