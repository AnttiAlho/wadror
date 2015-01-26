class RatingsController < ApplicationController
  def index
  	@ratings = Rating.all
  end

  def create
    Rating.create beer_id: params[:rating][:beer_id], score: params[:rating][:score]
    redirect_to ratings_path
  end


end