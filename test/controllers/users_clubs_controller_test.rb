require 'test_helper'

class UsersClubsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_clubs_index_url
    assert_response :success
  end

  test "should get show" do
    get users_clubs_show_url
    assert_response :success
  end

  test "should get new" do
    get users_clubs_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_clubs_edit_url
    assert_response :success
  end

  test "should get delete" do
    get users_clubs_delete_url
    assert_response :success
  end

end
