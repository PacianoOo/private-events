class EventUsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event


    def create
      @event_user = @event.event_users.build(user: current_user)
      if @event_user.save
        redirect_to @event, notice: "Successfully joined an event!"
      else
        redirect_to @event, notice: "There is an issue with your registration"
      end

    end

    def destroy
      @event_user = @event.event_users.find_by(user: current_user)

      if @event_user&.destroy
        redirect_to @event, notice: 'You have successfully unregistered from the event.'
      else
        redirect_to @event, alert: 'There was an issue with your unregistration.'
      end
    end


    private

    def set_event
        @event = Event.find(params[:event_id])
    end
end
