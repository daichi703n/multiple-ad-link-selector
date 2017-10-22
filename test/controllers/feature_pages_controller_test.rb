require 'test_helper'

class FeaturePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get manage" do
    get feature_pages_manage_url
    assert_response :success
  end

  test "should get view" do
    get feature_pages_view_url
    assert_response :success
  end

end
