class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
     params[:remember_me] = true
  end

  def create
    Event.create(event_params)
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    redirect_to events_path
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end
  def search
    date = params[:date]
    @search_event = Event.find_by({date: date})
    
    render :search
    
  end
  
  private
  def event_params
    params.require(:event).permit(:date, :alcohol_served, :venue_id, :band_id)
  end

end

