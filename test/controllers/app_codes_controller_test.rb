require "test_helper"

class AppCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_code = app_codes(:one)
  end

  test "should get index" do
    get app_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_app_code_url
    assert_response :success
  end

  test "should create app_code" do
    assert_difference("AppCode.count") do
      post app_codes_url, params: { app_code: { description: @app_code.description, manager: @app_code.manager, manager_email: @app_code.manager_email, name: @app_code.name, support_email: @app_code.support_email } }
    end

    assert_redirected_to app_code_url(AppCode.last)
  end

  test "should show app_code" do
    get app_code_url(@app_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_code_url(@app_code)
    assert_response :success
  end

  test "should update app_code" do
    patch app_code_url(@app_code), params: { app_code: { description: @app_code.description, manager: @app_code.manager, manager_email: @app_code.manager_email, name: @app_code.name, support_email: @app_code.support_email } }
    assert_redirected_to app_code_url(@app_code)
  end

  test "should destroy app_code" do
    assert_difference("AppCode.count", -1) do
      delete app_code_url(@app_code)
    end

    assert_redirected_to app_codes_url
  end
end
