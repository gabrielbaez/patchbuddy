require "application_system_test_case"

class AppserversTest < ApplicationSystemTestCase
  setup do
    @appserver = appservers(:one)
  end

  test "visiting the index" do
    visit appservers_url
    assert_selector "h1", text: "Appservers"
  end

  test "should create appserver" do
    visit appservers_url
    click_on "New appserver"

    fill_in "Description", with: @appserver.description
    fill_in "Name", with: @appserver.name
    click_on "Create Appserver"

    assert_text "Appserver was successfully created"
    click_on "Back"
  end

  test "should update Appserver" do
    visit appserver_url(@appserver)
    click_on "Edit this appserver", match: :first

    fill_in "Description", with: @appserver.description
    fill_in "Name", with: @appserver.name
    click_on "Update Appserver"

    assert_text "Appserver was successfully updated"
    click_on "Back"
  end

  test "should destroy Appserver" do
    visit appserver_url(@appserver)
    click_on "Destroy this appserver", match: :first

    assert_text "Appserver was successfully destroyed"
  end
end
