class Magnet < ApplicationRecord
  has_one :magnet_profile

  validates :url, presence: true
end
