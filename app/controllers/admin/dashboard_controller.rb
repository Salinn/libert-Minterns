class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @photo_challenge = PhotoChallenge.new
    @years = Year.all.reverse
    unless WinningPhoto.last.photo
      @winning_photo = WinningPhoto.first
      @photos = @winning_photo.photo_challenge.photos
    end
  end
  
  def import
    Admin::Dashboard.import(params[:file])
    redirect_to '/admin', notice: "Products imported."
  end
end