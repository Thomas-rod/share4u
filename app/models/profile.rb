class Profile < ApplicationRecord
  belongs_to :user

  # has_many :magnet_profil, dependent: :destroy

  validates :first_name, :last_name, presence: true





  ##------------------##
  ##     METHODS      ##
  ##------------------##

  def name_capitalize
    return "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end



end
