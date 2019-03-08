class Organizer::AppliesController < ApplicationController
  def index
    @applies = Apply.all
  end

  def create
    @user = User.find(params['apply']['user'].to_i)
    @job = Job.find(params['apply']['job_id'].to_i)
    @apply = Apply.new(apply_params)
    @apply.user = @user
    @apply.job = @job
    if @apply.save
      redirect_to user_path(@user), notice: "Candidat invité"
    else
      redirect_to job_path(@job), alert: "Vous avez déjà invité ce candidat"
    end
  end

  private

  def apply_params
    params.require(:apply).permit(:status)
  end

end
