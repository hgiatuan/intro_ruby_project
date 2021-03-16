class CompanySite < ApplicationRecord
  validates :country, :full_address, presence: true
  validates :longitude, :latitude, numericality: true
end
