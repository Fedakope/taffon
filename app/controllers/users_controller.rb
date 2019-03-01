class UsersController < ApplicationController
  # after_create :send_welcome_mail
  
  def index
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
  end
  
  # private
  
  # def send_welcome_mail
  #   user = User.last
  #   UserMailer.welcome(user).deliver_now
  # end
end
