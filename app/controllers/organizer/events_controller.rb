class Organizer::EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @skills = Skill.all
    @events = Event.all
    set_markers
    if params[:query].present?
      sql_query = " \
        full_address ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  def show
    @job = Job.new
    set_marker
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to profile_path, notice: "Votre évènement #{@event.name} a été bien crée! Maintenant,joutez des missions"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_back(fallback_location: organizer_event_path(@event))
    else
      render :edit
    end
  end

  def destroy
    if @event.destroy
      redirect_to organizer_events_path
    else
      redirect_to event_path(@event), alert: "You can't delete this event, it contains jobs!"
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :full_address, :description, :picture, :company, :start_date, :end_date)
  end

  def set_marker
    @markers = []
    @markers << {
        lng: @event.longitude,
        lat: @event.latitude,
      }
  end

  def set_markers
    @events = Event.where.not(latitude: nil, longitude: nil)
    @markers = @events.map do |event|
      {
        lng: event.longitude,
        lat: event.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { event: event })
      }
    end
  end
end
