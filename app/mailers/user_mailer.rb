class UserMailer < ApplicationMailer
  def welcome(user)
    @user = user

    mail(to: @user.email, subject: "Welcome to Taff'on")
  end


  def new_job
    @user = User.all
      mail(to: @user.map(&:email).uniq, subject: "New Job on Taff'on")
  end
end
