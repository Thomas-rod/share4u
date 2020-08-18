class Social < ApplicationRecord
  has_many :networks
  has_many :profiles, through: :networks

  validates :name, :kind, presence: true;
end
