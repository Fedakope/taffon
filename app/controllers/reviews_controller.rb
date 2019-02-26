class ReviewsController < ApplicationController
  before_action :set_apply
  before_action :set_job, only: [:create] # :set_organiser

  def index
    @reviews = Review.where(destinator_id: current_user.id) # list all reviews of an user
  end

  def create
    if @job.status == 'done' # you can only create a review when the job is done
      create_review
    else
      alert 'Sorry you can\'t write a review before the job done'
    end
  end

  private

  def create_review
    set_destinator
    @review = Review.new(
      review_params,
      apply: @apply,
      creator: current_user, # the current_user is always the creator of the review
      destinator: @destinator
    )
    @review.save
  end

  def set_destinator
    if current_user.oragnizer # if the current user is an organizer he had to review the technician that do the job
      @destinator = @apply.user
    else
      set_organizer # if current user isn't an organizer he had to review the organizer that create the job
      @destinator = @organizer
    end
  end

  def set_apply
    @apply = Apply.find(params[:id])
  end

  def set_job
    @job = Job.find(@apply.job_id)
  end

  def set_organizer
    event      = Event.find(@job.event_id)
    @organizer = User.find(event.user_id)
  end

  def review_params
    params.require(:review).permit(:rating, :content) # strong params
  end
end
