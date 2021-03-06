class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /events
  # GET /events.json
  def index
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    
    @events = Event.where(start_date: @date.beginning_of_month..@date.end_of_month)
    @events_by_date = @events.group_by(&:start_date)
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @comment = Comment.new
    @rsvp = Rsvp.new
    @photo = Photo.new
  end
  
  def show_event_photos
    @events = Event.all.includes(gallery: :photos).reverse
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        Rsvp.create!(user: (current_user), event: @event)
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.includes(comments: [:user], rsvps: [:user]).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :location, :start_date, :end_date, :start_time, :end_time, :cost, :reoccur, :description)
    end
end
