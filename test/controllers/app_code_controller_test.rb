require "test_helper"

class AppCodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_code_index_url
    assert_response :success
  end
end
