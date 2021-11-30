class Performance < ApplicationRecord
  belongs_to :artist
  has_many :tips, dependent: :destroy
  has_many :messages, dependent: :destroy


  validates :name, presence: true
  validates :address, presence: true
  validates :start_time, presence: true
  validates :performance_date, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
