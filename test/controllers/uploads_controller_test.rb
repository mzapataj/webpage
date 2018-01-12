require 'test_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get newew" do
    get uploads_newew_url
    assert_response :success
  end

end
