class FeaturePagesController < ApplicationController
  def manage
    @links = Link.all
  end

  def view
    @mals_url = "https://mals.herokuapp.com"
    @mals_js_path = "/mals.js?v=0.1"
    @mals_div_id = "mals_replace_target"
  end
end
