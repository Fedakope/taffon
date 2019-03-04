class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @jobs = Job.order("RANDOM()").limit(3)
    @users = User.where(["organizer = false"]).order("RANDOM()").limit(3)
  end

  def profile
    @have_skills = HaveSkill.where(user_id: current_user.id)
  end
end


