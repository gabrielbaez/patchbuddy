require "application_system_test_case"

class EnvironmentsTest < ApplicationSystemTestCase
  setup do
    @environment = environments(:one)
  end

  test "visiting the index" do
    visit environments_url
    assert_selector "h1", text: "Environments"
  end

  test "should create environment" do
    visit environments_url
    click_on "New environment"

    fill_in "Description", with: @environment.description
    fill_in "Name", with: @environment.name
    click_on "Create Environment"

    assert_text "Environment was successfully created"
    click_on "Back"
  end

  test "should update Environment" do
    visit environment_url(@environment)
    click_on "Edit this environment", match: :first

    fill_in "Description", with: @environment.description
    fill_in "Name", with: @environment.name
    click_on "Update Environment"

    assert_text "Environment was successfully updated"
    click_on "Back"
  end

  test "should destroy Environment" do
    visit environment_url(@environment)
    click_on "Destroy this environment", match: :first

    assert_text "Environment was successfully destroyed"
  end
end
