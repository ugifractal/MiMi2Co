require 'test_helper'

class MeetingDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meeting_details_index_url
    assert_response :success
  end

  test "should get show" do
    get meeting_details_show_url
    assert_response :success
  end

  test "should get new" do
    get meeting_details_new_url
    assert_response :success
  end

  test "should get edit" do
    get meeting_details_edit_url
    assert_response :success
  end

  test "should get delete" do
    get meeting_details_delete_url
    assert_response :success
  end

end
