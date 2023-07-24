require "application_system_test_case"

class OperatingsystemsTest < ApplicationSystemTestCase
  setup do
    @operatingsystem = operatingsystems(:one)
  end

  test "visiting the index" do
    visit operatingsystems_url
    assert_selector "h1", text: "Operatingsystems"
  end

  test "should create operatingsystem" do
    visit operatingsystems_url
    click_on "New operatingsystem"

    fill_in "Description", with: @operatingsystem.description
    fill_in "Name", with: @operatingsystem.name
    fill_in "Support end", with: @operatingsystem.support_end
    fill_in "Support start", with: @operatingsystem.support_start
    click_on "Create Operatingsystem"

    assert_text "Operatingsystem was successfully created"
    click_on "Back"
  end

  test "should update Operatingsystem" do
    visit operatingsystem_url(@operatingsystem)
    click_on "Edit this operatingsystem", match: :first

    fill_in "Description", with: @operatingsystem.description
    fill_in "Name", with: @operatingsystem.name
    fill_in "Support end", with: @operatingsystem.support_end
    fill_in "Support start", with: @operatingsystem.support_start
    click_on "Update Operatingsystem"

    assert_text "Operatingsystem was successfully updated"
    click_on "Back"
  end

  test "should destroy Operatingsystem" do
    visit operatingsystem_url(@operatingsystem)
    click_on "Destroy this operatingsystem", match: :first

    assert_text "Operatingsystem was successfully destroyed"
  end
end
