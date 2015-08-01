class PhotoChallengesController < ApplicationController
  before_action :set_photo_challenge, only: [:show, :edit, :update, :destroy]

  # GET /photo_challenges
  # GET /photo_challenges.json
  def index
    @photo_challenges = PhotoChallenge.all.includes([:photos, :year, winning_photo: :photo]).reverse
    @grouped_challenges = @photo_challenges.group_by(&:year_id)
    cache(@photo_challenges, @grouped_challenges)
  end

  # GET /photo_challenges/1
  # GET /photo_challenges/1.json
  def show
  end
  
  def photo_challenge_gallery
    @photo_challenge = PhotoChallenge.find(params[:photo_challenge_id])
    @photo = Photo.new
  end

  # GET /photo_challenges/new
  def new
    @photo_challenge = PhotoChallenge.new
  end

  # GET /photo_challenges/1/edit
  def edit
  end

  # POST /photo_challenges
  # POST /photo_challenges.json
  def create
    @photo_challenge = PhotoChallenge.new(photo_challenge_params)

    respond_to do |format|
      if @photo_challenge.save
        format.html { redirect_to @photo_challenge, notice: 'Photo challenge was successfully created.' }
        format.json { render :show, status: :created, location: @photo_challenge }
      else
        format.html { render :new }
        format.json { render json: @photo_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_challenges/1
  # PATCH/PUT /photo_challenges/1.json
  def update
    respond_to do |format|
      if @photo_challenge.update(photo_challenge_params)
        format.html { redirect_to @photo_challenge, notice: 'Photo challenge was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_challenge }
      else
        format.html { render :edit }
        format.json { render json: @photo_challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_challenges/1
  # DELETE /photo_challenges/1.json
  def destroy
    @photo_challenge.destroy
    respond_to do |format|
      format.html { redirect_to photo_challenges_url, notice: 'Photo challenge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_challenge
      @photo_challenge = PhotoChallenge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_challenge_params
      params.require(:photo_challenge).permit(:title, :theme, :year_id)
    end
end
