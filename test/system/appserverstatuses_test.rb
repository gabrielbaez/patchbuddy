require "application_system_test_case"

class AppserverstatusesTest < ApplicationSystemTestCase
  setup do
    @appserverstatus = appserverstatuses(:one)
  end

  test "visiting the index" do
    visit appserverstatuses_url
    assert_selector "h1", text: "Appserverstatuses"
  end

  test "should create appserverstatus" do
    visit appserverstatuses_url
    click_on "New appserverstatus"

    fill_in "Description", with: @appserverstatus.description
    fill_in "Name", with: @appserverstatus.name
    click_on "Create Appserverstatus"

    assert_text "Appserverstatus was successfully created"
    click_on "Back"
  end

  test "should update Appserverstatus" do
    visit appserverstatus_url(@appserverstatus)
    click_on "Edit this appserverstatus", match: :first

    fill_in "Description", with: @appserverstatus.description
    fill_in "Name", with: @appserverstatus.name
    click_on "Update Appserverstatus"

    assert_text "Appserverstatus was successfully updated"
    click_on "Back"
  end

  test "should destroy Appserverstatus" do
    visit appserverstatus_url(@appserverstatus)
    click_on "Destroy this appserverstatus", match: :first

    assert_text "Appserverstatus was successfully destroyed"
  end
end
