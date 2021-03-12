class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
  end

  def show
    @breweries = Brewery.find(params[:id])
  end
end
