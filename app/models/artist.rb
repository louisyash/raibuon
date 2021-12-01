class Artist < ApplicationRecord
  has_one_attached :photo
  has_many :performances, dependent: :destroy
  has_many :tips, through: :performances
  has_many :messages, through: :performances
  belongs_to :user

  validates :name, presence: true, uniqueness: true

  def tips_total
    tips.sum(:amount_cents)
  end

  def self.order_by_tips
    joins(:tips).group("performances.artist_id", "artists.id").order("sum(tips.amount_cents) DESC")
  end

end
