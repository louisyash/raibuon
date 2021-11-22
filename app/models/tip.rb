class Tip < ApplicationRecord
  belongs_to :user
  belongs_to :performance
end
