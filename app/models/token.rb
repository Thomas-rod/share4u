class Token < ApplicationRecord

  require 'securerandom'

  belongs_to :magnet
  # after_create :token_generation

  ##------------------##
  ##     CALLBACKS    ##
  ##------------------##

  ## NO NEED TO LOOP OVER IT = source(https://stackoverflow.com/questions/18554306/generating-unique-token-on-the-fly-with-rails)
  def token_generation
    self.token_generated = SecureRandom.urlsafe_base64(16)
    self.save
  end
end
