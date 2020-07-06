class MagnetProfile < ApplicationRecord
  belongs_to :magnet
  belongs_to :profile

  validates :magnet, :profile, presence: true
end
