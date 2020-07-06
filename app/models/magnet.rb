class Magnet < ApplicationRecord
  belongs_to :profile

  validates :token, :url, :profile, presence: true
end
