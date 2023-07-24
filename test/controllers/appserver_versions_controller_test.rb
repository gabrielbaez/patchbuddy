require "test_helper"

class AppserverVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appserver_version = appserver_versions(:one)
  end

  test "should get index" do
    get appserver_versions_url
    assert_response :success
  end

  test "should get new" do
    get new_appserver_version_url
    assert_response :success
  end

  test "should create appserver_version" do
    assert_difference("AppserverVersion.count") do
      post appserver_versions_url, params: { appserver_version: { appserver_id: @appserver_version.appserver_id, version: @appserver_version.version } }
    end

    assert_redirected_to appserver_version_url(AppserverVersion.last)
  end

  test "should show appserver_version" do
    get appserver_version_url(@appserver_version)
    assert_response :success
  end

  test "should get edit" do
    get edit_appserver_version_url(@appserver_version)
    assert_response :success
  end

  test "should update appserver_version" do
    patch appserver_version_url(@appserver_version), params: { appserver_version: { appserver_id: @appserver_version.appserver_id, version: @appserver_version.version } }
    assert_redirected_to appserver_version_url(@appserver_version)
  end

  test "should destroy appserver_version" do
    assert_difference("AppserverVersion.count", -1) do
      delete appserver_version_url(@appserver_version)
    end

    assert_redirected_to appserver_versions_url
  end
end
