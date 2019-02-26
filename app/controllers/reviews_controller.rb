class ReviewsController < ApplicationController
  before_action :set_apply, :set_job, :set_organiser

  def index
    set_organizer
    @reviews = Review.where(destinator_id: @organizer.id)
  end

  def create
    @review = Review.new(review_params)
    set_destinator
    @review = {
      apply: @apply,
      creator: @current_user, # the current_user is always the creator of the review
      destinator: @destinator
    }
  end

  private

  # set the destinator of the review
  def set_destinator
    if @creator == @organizer
      @destinator = @apply.user # if the current user is an organizer he had to review the technician
    else
      @destinator = @organizer # if current user isn't an organizer he had to review the organizer
    end
  end

  # set variables
  def set_apply
    @apply = Apply.find(params[:id])
  end

  def set_job
    # set_apply
    @job = Job.find(@apply.job_id)
  end

  def set_organizer
    # set_job
    event = Event.find(@job.event_id)
    @organizer = User.find(event.user_id)
  end

  # strong params
  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
