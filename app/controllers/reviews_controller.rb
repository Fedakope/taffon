class ReviewsController < ApplicationController
  before_action :set_apply, only: [create]
  before_action :set_job, :set_organizer

  def index
    if @organizer
      @reviews = Review.where(destinator_id: @organizer.id) # list all reviews of an organizer
    elsif @user
      @reviews = Review.where(destinator_id: @user.id) # list all reviews of an user
    else
      # reviews writted by current user
      # reviews about current user...
      @reviews = Review.where(destinator_id: current_user.id)
    end
  end

  def create
    set_destinator
    @review = Review.new(
      review_params,
      apply: @apply,
      creator: current_user, # the current_user is always the creator of the review
      destinator: @destinator
    )
    @review.save ? (redirect_to applies_path) : (render apply_path(@apply))
  end

  private

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
    if @apply
      @job = Job.find(@apply.job_id)
    else
      @job = Job.find(params[:id])
    end
  end

  def set_organizer
    event      = Event.find(@job.event_id)
    @organizer = User.find(event.user_id)
  end

  def review_params
    params.require(:review).permit(:rating, :content) # strong params
  end
end
