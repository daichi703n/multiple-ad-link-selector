class FeaturePagesController < ApplicationController
  def manage
  end

  def view
    @mals_url = "https://mals.herokuapp.com/"
    @mals_js_path = "assets/mals.js"
  end
end
