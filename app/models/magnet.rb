class Magnet < ApplicationRecord
  has_one :magnet_profile, dependent: :destroy
  has_one :token, dependent: :destroy

  validates :url, presence: true
  validates :url, uniqueness: true

  after_create :magnet_profile_creation
  after_create :token_creation


  def magnet_profile_creation
    magnet = self
    MagnetProfile.create(magnet: self)
  end

  def token_creation
    token = self.url.split('?')[1]
    Token.create(magnet: self, token_generated: token)
  end
end
