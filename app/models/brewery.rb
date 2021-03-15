class Brewery < ApplicationRecord
  has_many :beers
  validates :name, presence: true, uniqueness:


  def self.order_by_beers
    self.select("breweries.*").select("COUNT(breweries.id) as breweries_count")
        .left_joins(:beers)
        .group("breweries.id")
        .order("breweries_count DESC")
  end


end
