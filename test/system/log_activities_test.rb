require "application_system_test_case"

class LogActivitiesTest < ApplicationSystemTestCase
  setup do
    @log_activity = log_activities(:one)
  end

  test "visiting the index" do
    visit log_activities_url
    assert_selector "h1", text: "Log activities"
  end

  test "should create log activity" do
    visit log_activities_url
    click_on "New log activity"

    fill_in "Text", with: @log_activity.text
    click_on "Create Log activity"

    assert_text "Log activity was successfully created"
    click_on "Back"
  end

  test "should update Log activity" do
    visit log_activity_url(@log_activity)
    click_on "Edit this log activity", match: :first

    fill_in "Text", with: @log_activity.text
    click_on "Update Log activity"

    assert_text "Log activity was successfully updated"
    click_on "Back"
  end

  test "should destroy Log activity" do
    visit log_activity_url(@log_activity)
    click_on "Destroy this log activity", match: :first

    assert_text "Log activity was successfully destroyed"
  end
end
