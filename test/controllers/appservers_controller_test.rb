require "test_helper"

class AppserversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appserver = appservers(:one)
  end

  test "should get index" do
    get appservers_url
    assert_response :success
  end

  test "should get new" do
    get new_appserver_url
    assert_response :success
  end

  test "should create appserver" do
    assert_difference("Appserver.count") do
      post appservers_url, params: { appserver: { description: @appserver.description, name: @appserver.name } }
    end

    assert_redirected_to appserver_url(Appserver.last)
  end

  test "should show appserver" do
    get appserver_url(@appserver)
    assert_response :success
  end

  test "should get edit" do
    get edit_appserver_url(@appserver)
    assert_response :success
  end

  test "should update appserver" do
    patch appserver_url(@appserver), params: { appserver: { description: @appserver.description, name: @appserver.name } }
    assert_redirected_to appserver_url(@appserver)
  end

  test "should destroy appserver" do
    assert_difference("Appserver.count", -1) do
      delete appserver_url(@appserver)
    end

    assert_redirected_to appservers_url
  end
end
