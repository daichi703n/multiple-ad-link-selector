class FeaturePagesController < ApplicationController
  def manage
    @links = Link.all
  end

  def view
    @mals_url = "https://mals.herokuapp.com"
    @mals_js_path = "/mals.js"
  end
end
