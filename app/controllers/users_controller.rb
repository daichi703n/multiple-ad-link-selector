class UsersController < ApplicationController
  before_action :signed_in_user
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  def index
    #@users = User.all
    @users = [User.find(current_user.id)]
  end

  def show
    @user = User.find(params[:id])
    logger.info(@user)
    @links = @user.links.build(user_id:@user.id)
  end

  private
    def correct_user
      #@current_user ||= User.find_by(params[:id])
      @user = User.find(params[:id])
      unless current_user?(@user)
        logger.warn("Invalid access on Users. #{current_user.email} to #{request.method} #{request.url}")
        redirect_to root_path, notice: "Please signin with correct user."
      end
    end

    def current_user?(user)
      user == current_user
    end

end
