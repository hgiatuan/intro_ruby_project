class HomeController < ApplicationController
  def index
    @beers = Beer.includes(:brewery).order("review_score DESC").limit(10)

    @breweries = Brewery.order_by_beers.limit(10)

  end
end
