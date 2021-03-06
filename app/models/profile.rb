class Profile < ApplicationRecord
  belongs_to :user
  has_one :magnet_profile, dependent: :destroy
  has_one :vcard
  has_many :networks, dependent: :destroy
  has_one_attached :profile_picture

  validates :first_name, :last_name, presence: true


  after_create :zapier_profile

  ##------------------##
  ##     CALLBACKS    ##
  ##------------------##

  def zapier_profile
    Zapier::ProfileCreation.new(self).post_to_zapier if Rails.env.production?
  end

  ##------------------##
  ##     METHODS      ##
  ##------------------##

  def name_capitalize
    return "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end
end
