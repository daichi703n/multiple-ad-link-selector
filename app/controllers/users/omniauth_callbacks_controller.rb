class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"])
    # check whether a user exists.
    if @user.persisted?
      #ogger.debug("========== DEBUG ==========")
      #logger.debug("persisted: #{@user.inspect}")
      # Original update save hashed_email for javascript key
      @user.update(hashed_email: Digest::SHA1.hexdigest(@user.email))
      #logger.debug("========== DEBUG ==========")
      #logger.debug("persisted: #{@user.inspect}")
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
