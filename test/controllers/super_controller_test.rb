require 'test_helper'

class SuperControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get super_dashboard_url
    assert_response :success
  end

end
