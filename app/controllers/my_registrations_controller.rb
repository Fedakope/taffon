class MyRegistrationsController < Devise::RegistrationsController

  def create
    super
    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
  end


  protected

  def update_resource(resource, params)
    resource.update_without_password(user_params)
  end

  def user_params
    params.require(:user).permit(:photo, :email, :password, :password_confirmation)
  end
end