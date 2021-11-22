class Performance < ApplicationRecord
  belongs_to :artist
  has_many :tips
end
