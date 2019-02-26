class JobController < ApplicationController
  def index
    @job = Job.all
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
    @job.save
    redirect_to event_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to event_path
  end

  def jobs_params
    params.require(:job).permit(:description, :category, :start_date, :end_date, :start_time, :end_time)
  end
end
