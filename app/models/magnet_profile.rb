class MagnetProfile < ApplicationRecord
  belongs_to :magnet
  belongs_to :profile, optional: true
  has_one :vcard, :through => :profile
  validates :magnet, presence: true

  after_update :magnet_bought_true

  def magnet_bought_true
    unless self.profile.nil?
      profile = self.profile
      profile.magnet_bought = true
      profile.save!
    end
  end
end
