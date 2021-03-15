class Style < ApplicationRecord
  has_many :beer_styles
  has_many :beers, through: :beer_styles
  validates :name, presence: true, uniqueness: true
end
