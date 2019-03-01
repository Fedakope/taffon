class HaveSkillsController < ApplicationController
  def create
    @have_skill = HaveSkill.new
    @have_skill.skill_id = params['/profile']['skill'].to_i
    @have_skill.user = current_user
    if @have_skill.save
      redirect_to profile_path
    else 
      redirect_to profile_path, alert: "You already added that skill"
    end
  end
end
