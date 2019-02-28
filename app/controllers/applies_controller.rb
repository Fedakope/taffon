class AppliesController < ApplicationController
  def index
    @applies = Apply.all
  end

  def create
    @job = Job.find(params[:job_id])
    @user = current_user.user
    @apply = Apply.new(apply_params)
    @apply.user = @user
    @apply.job = @job
    if @apply.save!
      redirect_to user_path(@user)
    else
      render job_path(@job)
    end
  end

  def destroy
    @apply = Apply.find(params[:id])
    @apply.destroy
    redirect_to applies_path
  end


  private

  def apply_aprams
    params.require(:apply).permit(:status)
  end
end
