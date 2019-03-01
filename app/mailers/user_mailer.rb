class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail(to: @user.email, subject: "Welcome to Taff'on")
  end


  def new_job(user)
    @user = user
    mail(to: @user.email, subject: "New job on Taff'on")
  end
    
end
