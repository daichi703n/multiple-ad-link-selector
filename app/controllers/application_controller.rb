class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def signed_in_user
      redirect_to root_path, notice: "Please signup or signin." unless signed_in?
    end

end
