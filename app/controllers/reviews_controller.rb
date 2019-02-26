class ReviewsController < ApplicationController
  before_action :set_user

  def create
    @review = Review.new(review_params)
    @review.creator = current_user
    @review.destinator = @user
    @review.save ? (redirect_to root) : (render user_path(@user))
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content) # strong params
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
