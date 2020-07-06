class Magnet < ApplicationRecord
  has_one :magnet_profile

  validates :token, :url, :profile, presence: true
end
