class Profile < ApplicationRecord
  belongs_to :user

  # has_many :magnet_profil, dependent: :destroy

  validates :first_name, :last_name, presence: true


  after_save :zapier_profile

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
