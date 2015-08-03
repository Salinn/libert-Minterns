class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @photo_challenge = PhotoChallenge.new
  end
  
  def import
    Admin::Dashboard.import(params[:file])
    redirect_to '/admin', notice: "Products imported."
  end
end