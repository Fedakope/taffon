class JobsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        events.full_address ILIKE :query"
      @jobs = Job.joins(:event).where(sql_query, query: "%#{params[:query]}%")
      # @jobs = Job.where(sql_query, query: "%#{params[:query]}%")
    else
      @jobs = Job.all
    end
  end

  def show
    @apply = Apply.new
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

  private

  def job_params
    params.require(:job).permit(:description, :start_at, :end_at)
  end
end
