require 'test_helper'

class GuruControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get guru_name_url
    assert_response :success
  end

  test "should get email" do
    get guru_email_url
    assert_response :success
  end

  test "should get password" do
    get guru_password_url
    assert_response :success
  end

end
