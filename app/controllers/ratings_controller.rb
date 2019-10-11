class RatingsController < ApplicationController
  def create
    Rating.create(rating_params)
  end

  private
  def rating_params
    params.require(:rating).permit(:score, :zombie_id)
  end
end
