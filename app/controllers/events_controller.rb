class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  def my_created_events
    events = Event.where(creator: params["id"])
    if events.empty?
      render json: {"error": "no events found"}, status: :not_found
    else
      render json: events
    end
  end

  def my_events
    id = params["id"]
    events = Event.where("? = ANY (invitees)", id)
    if events.empty?
      render json: {"error": "no events found"}, status: :not_found
    else
      render json: events
    end
  end
  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      puts "lolol"
      puts params["event"]
      params.require(:event).permit(:title, :description, :active, :createdAt, :scheduledAt, :creator, :invitees => [])
    end
end
