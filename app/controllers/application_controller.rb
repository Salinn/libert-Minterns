class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #TODO: Make a decision on the bellow question
  #Could use to force users to signup, do we want this? Could deter people from looking around
  #before_action :authenticate_user!
end
