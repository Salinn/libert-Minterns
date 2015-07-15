class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def show
  end

  def edit
  end

  def update
    flash[:notice] = 'User Info was successfully updated.' if @user.update(user_params)
    respond_with(@user)
  end

  def index
    @search = User.ransack(params[:q])
    @users = @search.result.includes(:major, :college)
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