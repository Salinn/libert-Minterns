class WinningPhotosController < ApplicationController
  before_action :set_winning_photo, only: [:show, :edit, :update, :destroy]

  # GET /winning_photos
  # GET /winning_photos.json
  def index
    @winning_photos = WinningPhoto.all
  end

  # GET /winning_photos/1
  # GET /winning_photos/1.json
  def show
  end

  # GET /winning_photos/new
  def new
    @winning_photo = WinningPhoto.new
  end

  # GET /winning_photos/1/edit
  def edit
  end

  # POST /winning_photos
  # POST /winning_photos.json
  def create
    @winning_photo = WinningPhoto.new(winning_photo_params)

    respond_to do |format|
      if @winning_photo.save
        format.html { redirect_to @winning_photo, notice: 'Winning photo was successfully created.' }
        format.json { render :show, status: :created, location: @winning_photo }
      else
        format.html { render :new }
        format.json { render json: @winning_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winning_photos/1
  # PATCH/PUT /winning_photos/1.json
  def update
    respond_to do |format|
      if @winning_photo.update(winning_photo_params)
        format.html { redirect_to @winning_photo, notice: 'Winning photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @winning_photo }
      else
        format.html { render :edit }
        format.json { render json: @winning_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winning_photos/1
  # DELETE /winning_photos/1.json
  def destroy
    @winning_photo.destroy
    respond_to do |format|
      format.html { redirect_to winning_photos_url, notice: 'Winning photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winning_photo
      @winning_photo = WinningPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def winning_photo_params
      params.require(:winning_photo).permit(:photo_challenge_id, :reason, :picture_id)
    end
end
