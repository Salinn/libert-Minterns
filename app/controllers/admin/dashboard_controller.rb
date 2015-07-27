class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end
  
  def import
    Admin::Dashboard.import(params[:file])
    redirect_to '/admin', notice: "Products imported."
  end
end