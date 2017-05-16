require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create({
      name: "helloAdmion", 
      email: "helloadmin@gmail.com", 
      password: 'admin@123', 
      confirm_password: 'admin@123', 
      mobile: 4324343, 
      status: true})
  end
  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should get show" do
    get user_url(@user)
    assert_response :success
  end

end
