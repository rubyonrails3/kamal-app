require "test_helper"

class LogActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_activity = log_activities(:one)
  end

  test "should get index" do
    get log_activities_url
    assert_response :success
  end

  test "should get new" do
    get new_log_activity_url
    assert_response :success
  end

  test "should create log_activity" do
    assert_difference("LogActivity.count") do
      post log_activities_url, params: { log_activity: { text: @log_activity.text } }
    end

    assert_redirected_to log_activity_url(LogActivity.last)
  end

  test "should show log_activity" do
    get log_activity_url(@log_activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_activity_url(@log_activity)
    assert_response :success
  end

  test "should update log_activity" do
    patch log_activity_url(@log_activity), params: { log_activity: { text: @log_activity.text } }
    assert_redirected_to log_activity_url(@log_activity)
  end

  test "should destroy log_activity" do
    assert_difference("LogActivity.count", -1) do
      delete log_activity_url(@log_activity)
    end

    assert_redirected_to log_activities_url
  end
end
