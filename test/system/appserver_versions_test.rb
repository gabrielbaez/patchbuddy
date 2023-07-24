require "application_system_test_case"

class AppserverVersionsTest < ApplicationSystemTestCase
  setup do
    @appserver_version = appserver_versions(:one)
  end

  test "visiting the index" do
    visit appserver_versions_url
    assert_selector "h1", text: "Appserver versions"
  end

  test "should create appserver version" do
    visit appserver_versions_url
    click_on "New appserver version"

    fill_in "Appserver", with: @appserver_version.appserver_id
    fill_in "Version", with: @appserver_version.version
    click_on "Create Appserver version"

    assert_text "Appserver version was successfully created"
    click_on "Back"
  end

  test "should update Appserver version" do
    visit appserver_version_url(@appserver_version)
    click_on "Edit this appserver version", match: :first

    fill_in "Appserver", with: @appserver_version.appserver_id
    fill_in "Version", with: @appserver_version.version
    click_on "Update Appserver version"

    assert_text "Appserver version was successfully updated"
    click_on "Back"
  end

  test "should destroy Appserver version" do
    visit appserver_version_url(@appserver_version)
    click_on "Destroy this appserver version", match: :first

    assert_text "Appserver version was successfully destroyed"
  end
end
