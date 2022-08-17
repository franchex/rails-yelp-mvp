class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review     = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(reviews_params)
    @review.save
    redirect_to restaurants_path
  end

  private

  def reviews_params
    params.require(:review).permit(:rating, :content)
  end

end
