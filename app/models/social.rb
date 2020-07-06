class Social < ApplicationRecord
  has_many :networks
  has_many :profiles, through: :networks

  validates :name, :url_desktop_begin, :url_mobile_begin, presence: true;
end
