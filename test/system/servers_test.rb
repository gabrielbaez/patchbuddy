require "application_system_test_case"

class ServersTest < ApplicationSystemTestCase
  setup do
    @server = servers(:one)
  end

  test "visiting the index" do
    visit servers_url
    assert_selector "h1", text: "Servers"
  end

  test "should create server" do
    visit servers_url
    click_on "New server"

    fill_in "Appserver", with: @server.appserver_id
    fill_in "Appserver version", with: @server.appserver_version_id
    fill_in "Appserverstatus", with: @server.appserverstatus_id
    fill_in "Environment", with: @server.environment_id
    fill_in "Name", with: @server.name
    fill_in "Operatingsystem", with: @server.operatingsystem_id
    click_on "Create Server"

    assert_text "Server was successfully created"
    click_on "Back"
  end

  test "should update Server" do
    visit server_url(@server)
    click_on "Edit this server", match: :first

    fill_in "Appserver", with: @server.appserver_id
    fill_in "Appserver version", with: @server.appserver_version_id
    fill_in "Appserverstatus", with: @server.appserverstatus_id
    fill_in "Environment", with: @server.environment_id
    fill_in "Name", with: @server.name
    fill_in "Operatingsystem", with: @server.operatingsystem_id
    click_on "Update Server"

    assert_text "Server was successfully updated"
    click_on "Back"
  end

  test "should destroy Server" do
    visit server_url(@server)
    click_on "Destroy this server", match: :first

    assert_text "Server was successfully destroyed"
  end
end
