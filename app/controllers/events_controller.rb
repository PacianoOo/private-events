class EventsController < ApplicationController
  def index
    @events = Event.all.order(created_at: :desc)
  end

  def create
    
  end

  def new
    @event = Event.new(event_params)
  end
  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time, :event_date)
  end
end
