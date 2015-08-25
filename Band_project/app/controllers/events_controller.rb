class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end

  def create
<<<<<<< HEAD
=======

>>>>>>> 8511de1082b54516c8f613f57123547ce03c77e9
    params[:remember_me] = true

    id = params[:event][:venue_id]
    venue=Venue.find(id)
    events = venue.events

    t = events.select do |event|
      event.date == params[:event][:date]
    end

    if (t.length == 0 )
<<<<<<< HEAD
      Event.create(event_params)
    end
=======


    Event.create(event_params)
  end
>>>>>>> 8511de1082b54516c8f613f57123547ce03c77e9
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

