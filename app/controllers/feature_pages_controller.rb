class FeaturePagesController < ApplicationController
  def manage
    @links = Link.all
  end

  def view
    @mals_url = "#{root_url}"
    @mals_js_path = "mals.js?malskey=#{User.find(current_user.id).hashed_email}"
    @mals_div_id = "mals_replace_target"
  end
end
