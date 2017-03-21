require 'test_helper'

class HikersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hikers_new_url
    assert_response :success
  end

end
