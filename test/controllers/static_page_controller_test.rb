require 'test_helper'

class StaticPageControllerTest < ActionController::TestCase
  test "should get landing_page" do
    get :landing_page
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
