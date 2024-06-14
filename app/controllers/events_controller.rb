class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all.order(created_at: :desc)
  end

  def create
    @event = Event.new(event_params)
  end

  def new
    @event = Event.new
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time, :event_date)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
