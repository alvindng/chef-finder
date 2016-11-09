class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @profile = Profile.find(params[:profile_id])
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @profile = Profile.find(params[:profile_id])
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @profile = Profile.find(params[:profile_id])
    @event = @profile.events.new(event_params)
    if @event.save
      respond_to do |format|
        format.html { redirect_to profile_event_path(@profile, @event) }
        format.js
      end
      flash[:notice] = "Event Added Successfully!"
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @profile = Profile.find(params[:profile_id])
    if @event.update(event_params)
      redirect_to profile_event_path(@profile, @event)
    else
      render :edit
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    flash[:alert] ='Event was successfully destroyed.'
    redirect_to profile_path(@profile)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @profile = Profile.find(params[:profile_id])
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :date, :start_time, :end_time, :datetime)
    end
end
