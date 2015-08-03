class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @photo_challenge = PhotoChallenge.new
    @years = Year.all.reverse
    unless WinningPhoto.last.photo_challenge_id
      @winning_photo = WinningPhoto.last
    end
  end
  
  def import
    Admin::Dashboard.import(params[:file])
    redirect_to '/admin', notice: "Products imported."
  end
end