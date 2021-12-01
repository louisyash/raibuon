class Performance < ApplicationRecord
  belongs_to :artist
  has_many :tips, dependent: :destroy
  has_many :messages, dependent: :destroy


  validates :name, presence: true
  validates :address, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def live?
    time = end_time - Time.now
    duration = end_time - start_time
    time.positive? && time <= duration
  end

  def upcoming?
    start_time > Time.now
  end

  def archived?
    end_time < Time.now
  end
end
