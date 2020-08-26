class Vcard < ApplicationRecord
  belongs_to :profile

  validates :profile, :phone_number, presence: true
end
