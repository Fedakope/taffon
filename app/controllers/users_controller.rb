class UsersController < ApplicationController
  def index
    set_markers
    @users = User.all
    if params[:query].present?
      sql_query = " \
      full_address ILIKE :query"
      @users = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @users = User.all
    end
  end
  
  def show
    @user = User.find(params[:id])
    @reviews = Review.where(destinator: @user)
    @review = Review.new
    @apply = Apply.new
  end


  private

  def set_markers
    @events = Event.where.not(latitude: nil, longitude: nil)
    @markers = @events.map do |event|
      {
        lng: event.longitude,
        lat: event.latitude,
      }
    end
  end

  def user_params
    params.require(:user).permit(:photo)
  end
end

