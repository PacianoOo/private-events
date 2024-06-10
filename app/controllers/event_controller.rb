class EventController < ApplicationController
  def index
    @events = Event.order(created_at: :desc)
  end

  def create
  end

  def destroy
  end
end
