class Network < ApplicationRecord

  ## NETWORK ARE ALL THE SOCIALS ADDED BY USER

  belongs_to :social
  belongs_to :profile

  validates :social, :profile, :username, presence: true
  # validates_uniqueness_of :profile_id, :scope => [:social_id]
end
