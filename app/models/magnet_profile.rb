class MagnetProfile < ApplicationRecord
  belongs_to :magnet
  belongs_to :profile, optional: true

  validates :magnet, presence: true

  after_update :magnet_bought_true

  def magnet_bought_true
    profile = self.profile
    profile.magnet_bought = true
    profile.save!
  end
end
