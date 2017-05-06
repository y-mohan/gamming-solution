require 'test_helper'

class SamplformsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get samplforms_new_url
    assert_response :success
  end

  test "should get index" do
    get samplforms_index_url
    assert_response :success
  end

  test "should get edit" do
    get samplforms_edit_url
    assert_response :success
  end

  test "should get show" do
    get samplforms_show_url
    assert_response :success
  end

end
