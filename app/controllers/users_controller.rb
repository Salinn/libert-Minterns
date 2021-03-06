class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html

  def index
    @search = User.with_role(:intern).ransack(params[:q])
    @users = @search.result.includes(:major, :college)
  end
  
  def show
  end
  
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    flash[:notice] = 'User Info was successfully updated.' if @user.update(user_params)
    respond_with(@user)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :profile_picture, :remote_profile_picture)
  end
end