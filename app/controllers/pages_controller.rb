class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @jobs = Job.order("RANDOM()").limit(3)
    @users = User.where(organizer: false).order("RANDOM()").limit(3)
  end

  def profile
    @have_skills = HaveSkill.where(user_id: current_user.id)
    @user_skills = []
    @have_skills.each do |have_skill|
      @user_skills << have_skill.skill
    end
    @event = Event.new
    @notifications = Notification.where(user_id: current_user.id)
    @unread_notifications = Notification.unread_count(current_user)
    unread_ids = @notifications.reject(&:read?).select(&:id)
    Notification.read!(unread_ids)

    # @notifications = Notification.where(user_id: current_user.id)
    # @have_skill = HaveSkill.new
  end
end
