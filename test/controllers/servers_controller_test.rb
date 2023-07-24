require "test_helper"

class ServersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @server = servers(:one)
  end

  test "should get index" do
    get servers_url
    assert_response :success
  end

  test "should get new" do
    get new_server_url
    assert_response :success
  end

  test "should create server" do
    assert_difference("Server.count") do
      post servers_url, params: { server: { appserver_id: @server.appserver_id, appserver_version_id: @server.appserver_version_id, appserverstatus_id: @server.appserverstatus_id, environment_id: @server.environment_id, name: @server.name, operatingsystem_id: @server.operatingsystem_id } }
    end

    assert_redirected_to server_url(Server.last)
  end

  test "should show server" do
    get server_url(@server)
    assert_response :success
  end

  test "should get edit" do
    get edit_server_url(@server)
    assert_response :success
  end

  test "should update server" do
    patch server_url(@server), params: { server: { appserver_id: @server.appserver_id, appserver_version_id: @server.appserver_version_id, appserverstatus_id: @server.appserverstatus_id, environment_id: @server.environment_id, name: @server.name, operatingsystem_id: @server.operatingsystem_id } }
    assert_redirected_to server_url(@server)
  end

  test "should destroy server" do
    assert_difference("Server.count", -1) do
      delete server_url(@server)
    end

    assert_redirected_to servers_url
  end
end
