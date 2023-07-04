require "application_system_test_case"

class AppCodesTest < ApplicationSystemTestCase
  setup do
    @app_code = app_codes(:one)
  end

  test "visiting the index" do
    visit app_codes_url
    assert_selector "h1", text: "App codes"
  end

  test "should create app code" do
    visit app_codes_url
    click_on "New app code"

    fill_in "Description", with: @app_code.description
    fill_in "Manager", with: @app_code.manager
    fill_in "Manager email", with: @app_code.manager_email
    fill_in "Name", with: @app_code.name
    fill_in "Support email", with: @app_code.support_email
    click_on "Create App code"

    assert_text "App code was successfully created"
    click_on "Back"
  end

  test "should update App code" do
    visit app_code_url(@app_code)
    click_on "Edit this app code", match: :first

    fill_in "Description", with: @app_code.description
    fill_in "Manager", with: @app_code.manager
    fill_in "Manager email", with: @app_code.manager_email
    fill_in "Name", with: @app_code.name
    fill_in "Support email", with: @app_code.support_email
    click_on "Update App code"

    assert_text "App code was successfully updated"
    click_on "Back"
  end

  test "should destroy App code" do
    visit app_code_url(@app_code)
    click_on "Destroy this app code", match: :first

    assert_text "App code was successfully destroyed"
  end
end
