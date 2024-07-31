class UserProfileController < ApplicationController

    def show
        @user_events = current_user.events
        @profile = User.find(params[:id])
    end


end
