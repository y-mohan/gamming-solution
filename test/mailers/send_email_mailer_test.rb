require 'test_helper'

class SendEmailMailerTest < ActionMailer::TestCase
  setup do
  	@user = User.first 
  	if @user.blank?
      @user = User.create({
      name: "helloAdmion", 
      email: "helloadmin@gmail.com", 
      password: 'admin@123', 
      confirm_password: 'admin@123', 
      mobile: 4324343, 
      status: true})
  	end 
  end
  test "welcome" do
    mail = SendEmailMailer.welcome(@user)
    assert_equal "Welcome to online digital market", mail.subject
    # assert_equal ["to@example.org"], mail.to
    # assert_equal ["from@example.com"], mail.from
    # assert_match "Hi", mail.body.encoded
  end

end
