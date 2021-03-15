class BeerStyle < ApplicationRecord
  belongs_to :beer
  belongs_to :style
end
