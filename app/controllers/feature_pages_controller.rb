class FeaturePagesController < ApplicationController
  def manage
  end

  def view
    @mals_url = "https://mals.herokuapp.com"
    @mals_js_path = "/mals.js"
  end
end
