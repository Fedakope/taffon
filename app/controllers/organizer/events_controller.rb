class Organizer::EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all


    @events = Event.where.not(latitude: nil, longitude: nil)
    @markers = @events.map do |event|
      {
        lng: event.longitude,
        lat: event.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { event: event })
      }
    end
  end

  def show
    @job = Job.new

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to organizer_event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to organizer_event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to organizer_events_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :full_address, :description, :picture_url, :company, :start_date, :end_date)
  end

end
