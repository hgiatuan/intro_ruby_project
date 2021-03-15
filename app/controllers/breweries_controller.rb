class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.order_by_beers
  end

  def show
    @brewery = Brewery.find(params[:id])
  end
end
