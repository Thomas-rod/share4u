class Magnet < ApplicationRecord
  belongs_to :token
  has_one :magnet_profile

  validates :token, :url, :profile, presence: true
end
