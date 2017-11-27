class UsersController < ApplicationController
  before_action :signed_in_user

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
    def signed_in_user
      redirect_to root_path, notice: "Please signup or signin." unless signed_in?
    end

end
