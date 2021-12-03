class Message < ApplicationRecord
  belongs_to :user
  belongs_to :performance
  has_one_attached :photo

  validates :content, presence: true

  def time_ago
    message.created_at - Time.now.strftime("%M")
  end
end
