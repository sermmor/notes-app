require 'test_helper'

class PagesWithoutLoginControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_without_login_home_url
    assert_response :success
  end

end
