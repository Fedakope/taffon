class Organizer::JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @event = Event.find(params[:event_id])
    @skill = Skill.find_by(name: params[:job][:skill_id])
    @job = Job.new(job_params)
    @job.event = @event
    @job.skill = @skill
    if @job.save
      send_new_job_email
      redirect_to profile_path, notice: "Votre mission a bien été créée, cherchez un technicien ou promouvez cette mission"
    else
      redirect_to profile_path, alert: "Sélectionnez au moins une catégorie"
    end

  end

  def destroy
    @job = Job.find(params[:id])
    @event = @job.event
    @job.destroy
    redirect_to organizer_event_path(@event)
  end

  private

  def send_new_job_email
    event = @job.event
    lat = event.latitude
    lg = event.longitude
    users = User.near([lat, lg], 10, units: :km)
    if users.present?
      users.each do |user|
        UserMailer.new_job(user).deliver_later
      end
    end
  end

  def skill_params
    params.require(:skill).permit(:name, :category)
  end

  def job_params
    params.require(:job).permit(:description, :skill, :status, :start_at, :end_at)
  end
end
