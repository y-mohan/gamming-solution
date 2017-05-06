require 'test_helper'

class IndiaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get india_index_url
    assert_response :success
  end

  test "should get new" do
    get india_new_url
    assert_response :success
  end

  test "should get edit" do
    get india_edit_url
    assert_response :success
  end

  test "should get show" do
    get india_show_url
    assert_response :success
  end

end
