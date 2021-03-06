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

  # def create
  #   @event = Event.find(params[:job][:event_id])
  #   @skill = Skill.find_by(name: params[:job][:skill_id])
  #   @job = Job.new(job_params)
  #   @job.event = @event
  #   @job.skill = @skill
  #   if @job.save
  #     send_new_job_email
  #     redirect_to profile_path, notice: "Your job has been sucessfully created !"
  #   else
  #     redirect_to profile_path, alert: "You need to select at least one skill"
  #   end
  # end

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
