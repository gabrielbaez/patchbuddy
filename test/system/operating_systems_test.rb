require "application_system_test_case"

class OperatingSystemsTest < ApplicationSystemTestCase
  setup do
    @operating_system = operating_systems(:one)
  end

  test "visiting the index" do
    visit operating_systems_url
    assert_selector "h1", text: "Operating systems"
  end

  test "should create operating system" do
    visit operating_systems_url
    click_on "New operating system"

    fill_in "Description", with: @operating_system.description
    fill_in "Name", with: @operating_system.name
    fill_in "Support end", with: @operating_system.support_end
    fill_in "Support start", with: @operating_system.support_start
    click_on "Create Operating system"

    assert_text "Operating system was successfully created"
    click_on "Back"
  end

  test "should update Operating system" do
    visit operating_system_url(@operating_system)
    click_on "Edit this operating system", match: :first

    fill_in "Description", with: @operating_system.description
    fill_in "Name", with: @operating_system.name
    fill_in "Support end", with: @operating_system.support_end
    fill_in "Support start", with: @operating_system.support_start
    click_on "Update Operating system"

    assert_text "Operating system was successfully updated"
    click_on "Back"
  end

  test "should destroy Operating system" do
    visit operating_system_url(@operating_system)
    click_on "Destroy this operating system", match: :first

    assert_text "Operating system was successfully destroyed"
  end
end
