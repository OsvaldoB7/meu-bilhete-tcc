class EventsController < ApplicationController
    def index
      @events = Event.all
    end
    
    def show
        @event = Event.find(params[:id])
    end

    def checkout
        @event = Event.find(params[:event_id])
        session[:event_id_for_checkout] = @event.id
    end


end
  