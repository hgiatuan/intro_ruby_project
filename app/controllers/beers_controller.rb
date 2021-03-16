class BeersController < ApplicationController
  BEER_PER_PAGE = 10
  def index
    @page = params.fetch(:page, 0).to_i
    @beers = Beer.includes(:brewery).order("review_score DESC").offset(@page * BEER_PER_PAGE).limit(BEER_PER_PAGE)
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @beers = Beer.where("name LIKE ? ", wildcard_search)
  end
end
