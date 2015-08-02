class RsvpStatusesController < ApplicationController
  before_action :set_rsvp_status, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /rsvp_statuses
  # GET /rsvp_statuses.json
  def index
    @rsvp_statuses = RsvpStatus.all
  end

  # GET /rsvp_statuses/1
  # GET /rsvp_statuses/1.json
  def show
  end

  # GET /rsvp_statuses/new
  def new
    @rsvp_status = RsvpStatus.new
  end

  # GET /rsvp_statuses/1/edit
  def edit
  end

  # POST /rsvp_statuses
  # POST /rsvp_statuses.json
  def create
    @rsvp_status = RsvpStatus.new(rsvp_status_params)

    respond_to do |format|
      if @rsvp_status.save
        format.html { redirect_to @rsvp_status, notice: 'Rsvp status was successfully created.' }
        format.json { render :show, status: :created, location: @rsvp_status }
      else
        format.html { render :new }
        format.json { render json: @rsvp_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rsvp_statuses/1
  # PATCH/PUT /rsvp_statuses/1.json
  def update
    respond_to do |format|
      if @rsvp_status.update(rsvp_status_params)
        format.html { redirect_to @rsvp_status, notice: 'Rsvp status was successfully updated.' }
        format.json { render :show, status: :ok, location: @rsvp_status }
      else
        format.html { render :edit }
        format.json { render json: @rsvp_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rsvp_statuses/1
  # DELETE /rsvp_statuses/1.json
  def destroy
    @rsvp_status.destroy
    respond_to do |format|
      format.html { redirect_to rsvp_statuses_url, notice: 'Rsvp status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rsvp_status
      @rsvp_status = RsvpStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rsvp_status_params
      params.require(:rsvp_status).permit(:rsvp_id)
    end
end
