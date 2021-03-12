class BeersController < ApplicationController
  def index
    @beers = Beer.includes(:brewery).order("review_score DESC")

  end

  def show

  end
end
