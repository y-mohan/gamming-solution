require 'test_helper'

class MallelaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mallela_index_url
    assert_response :success
  end

  test "should get new" do
    get mallela_new_url
    assert_response :success
  end

  test "should get edit" do
    get mallela_edit_url
    assert_response :success
  end

  test "should get show" do
    get mallela_show_url
    assert_response :success
  end

end
