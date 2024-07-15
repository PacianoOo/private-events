class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all.order(created_at: :desc)
  end

  def show
    @event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.created_by = current_user.id
    if @event.save
      redirect_to root_path, notice: 'Event was successfully created.'
    else
      flash[:post_errors] = @event.errors.full_messages
      render :new
    end
  end

  def destroy
    @event.destroy
    if @event.destroy
      redirect_to root_path, notice: "Event was successfully destroyed"
    else
      flash[:post_errors] = @event.errors.full_messages
      redirect_to root_path
    end
  end
  def edit
    @event
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to root_path }
        #format.turbo_stream { render turbo_stream: turbo_stream.replace("posts", partial: "views/posts/post", locals: { post: @post }) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  private

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :end_time, :event_date)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
