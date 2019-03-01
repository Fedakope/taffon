class Organizer::JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @event = Event.find(params[:event_id])
    @skill = Skill.find_by(name: params[:job][:skill_id])
    @job = Job.new(job_params)
    @job.event = @event
    @job.skill = @skill
    if @job.save
      send_new_job_email
      redirect_to organizer_event_path(@event), notice: "Your job has been sucessfully created !"
    else
      redirect_to organizer_event_path(@event), alert: "You need to select at least one skill"
    end

  end

  def destroy
    @job = Job.find(params[:id])
    @event = @job.event
    @job.destroy
    redirect_to organizer_event_path(@event)
  end

  private

  def send_new_job_email
    @user = User.where(organizer: false)
    @user.each do |user|
      UserMailer.new_job(user).deliver_later
    end
  end

  def skill_params
    params.require(:skill).permit(:name, :category)
  end

  def job_params
    params.require(:job).permit(:description, :skill, :status, :start_at, :end_at)
  end
end
