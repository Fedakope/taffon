class Organizer::JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @event = Event.find(params[:event_id])
    @job = Job.new(job_params)
    @job.event = @event

    @job.save!
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to event_path
  end

  private

  def job_params
    params.require(:job).permit(:description, :status, :start_at, :end_at)
  end
end
