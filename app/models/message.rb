class Message < ApplicationRecord
  belongs_to :user
  belongs_to :performance
  has_one_attached :photo

  validates :content, presence: true
end
