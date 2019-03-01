class Organizer::JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @event = Event.find(params[:event_id])
    @job = Job.new(job_params)
    @job.event = @event

    if @job.save
      redirect_to organizer_event_path(@event)
    else
      render 'organizer/events/show'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to event_path
  end

  private

  def job_params
    params.require(:job).permit(:description, :category, :start_at, :end_at)
  end
end
