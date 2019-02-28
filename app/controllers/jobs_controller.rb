class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.event = @event
    if @job.save!
      redirect_to event_path(@event)
    else
      render :index
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to event_path
  end

  def job_params
    params.require(:job).permit(:description, :category, :start_at, :end_at)
  end
end
