class Magnet < ApplicationRecord
  has_one :magnet_profile, dependent: :destroy

  validates :url, presence: true
end
