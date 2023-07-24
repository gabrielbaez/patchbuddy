require "test_helper"

class OperatingsystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operatingsystem = operatingsystems(:one)
  end

  test "should get index" do
    get operatingsystems_url
    assert_response :success
  end

  test "should get new" do
    get new_operatingsystem_url
    assert_response :success
  end

  test "should create operatingsystem" do
    assert_difference("Operatingsystem.count") do
      post operatingsystems_url, params: { operatingsystem: { description: @operatingsystem.description, name: @operatingsystem.name, support_end: @operatingsystem.support_end, support_start: @operatingsystem.support_start } }
    end

    assert_redirected_to operatingsystem_url(Operatingsystem.last)
  end

  test "should show operatingsystem" do
    get operatingsystem_url(@operatingsystem)
    assert_response :success
  end

  test "should get edit" do
    get edit_operatingsystem_url(@operatingsystem)
    assert_response :success
  end

  test "should update operatingsystem" do
    patch operatingsystem_url(@operatingsystem), params: { operatingsystem: { description: @operatingsystem.description, name: @operatingsystem.name, support_end: @operatingsystem.support_end, support_start: @operatingsystem.support_start } }
    assert_redirected_to operatingsystem_url(@operatingsystem)
  end

  test "should destroy operatingsystem" do
    assert_difference("Operatingsystem.count", -1) do
      delete operatingsystem_url(@operatingsystem)
    end

    assert_redirected_to operatingsystems_url
  end
end
