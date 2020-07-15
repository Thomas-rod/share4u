class MagnetProfile < ApplicationRecord
  belongs_to :magnet
  belongs_to :profile, optional: true

  validates :magnet, presence: true
end
