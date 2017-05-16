require 'test_helper'

class AbcdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abcd_index_url
    assert_response :success
  end

  test "should get new" do
    get abcd_new_url
    assert_response :success
  end

  test "should get show" do
    get abcd_show_url
    assert_response :success
  end

  test "should get edit" do
    get abcd_edit_url
    assert_response :success
  end

end
