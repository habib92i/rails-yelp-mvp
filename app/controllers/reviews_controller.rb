class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new # this if for simple form
  end

  def create
    restaurant = Restaurant.find(params[:restaurant_id])
    review = Review.new(review_params)
    review.restaurant = restaurant
    @review = review
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
