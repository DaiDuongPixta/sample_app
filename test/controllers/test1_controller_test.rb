require 'test_helper'

class Test1ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get test1_new_url
    assert_response :success
  end

end
