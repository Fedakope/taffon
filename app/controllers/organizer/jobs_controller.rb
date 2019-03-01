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
    if @job.save!
      redirect_to organizer_event_path(@event), :notice => "Your job has been sucessfully created !"
    else
      render :new
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to event_path
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :category)
  end

  def job_params
    params.require(:job).permit(:description, :skill, :status, :start_at, :end_at)
  end
end
