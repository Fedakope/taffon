class AppliesController < ApplicationController
  def index
    @applies = Apply.all
  end


  def create
    @job = Job.find(params[:job_id])
    @user = current_user
    @apply = Apply.new(apply_params)
    @apply.user = @user
    @apply.job = @job
    if @apply.save
      redirect_to user_path(@user), :alert => 'You applied for the position'
    else
      redirect_to job_path(@job), :alert => 'Your aleardy applied for this job'
    end
  end

  def update
    @apply = Apply.find(params[:id])
    if @apply.update(apply_params)
      redirect_to profile_path
    else
      redirect_to profile_path
    end
  end

  def destroy
    @job = Job.find(params[:job_id])
    @apply = Apply.find(params[:id])
    @apply.destroy
    redirect_to job_path(@job)
  end


  private

  def apply_params
    params.require(:apply).permit(:status)
  end
end


