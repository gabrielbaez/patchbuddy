require "test_helper"

class AppserverstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appserverstatus = appserverstatuses(:one)
  end

  test "should get index" do
    get appserverstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_appserverstatus_url
    assert_response :success
  end

  test "should create appserverstatus" do
    assert_difference("Appserverstatus.count") do
      post appserverstatuses_url, params: { appserverstatus: { description: @appserverstatus.description, name: @appserverstatus.name } }
    end

    assert_redirected_to appserverstatus_url(Appserverstatus.last)
  end

  test "should show appserverstatus" do
    get appserverstatus_url(@appserverstatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_appserverstatus_url(@appserverstatus)
    assert_response :success
  end

  test "should update appserverstatus" do
    patch appserverstatus_url(@appserverstatus), params: { appserverstatus: { description: @appserverstatus.description, name: @appserverstatus.name } }
    assert_redirected_to appserverstatus_url(@appserverstatus)
  end

  test "should destroy appserverstatus" do
    assert_difference("Appserverstatus.count", -1) do
      delete appserverstatus_url(@appserverstatus)
    end

    assert_redirected_to appserverstatuses_url
  end
end
