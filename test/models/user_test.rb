require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
  @user = User.new(name: "Example here" ,email: "example@user.com", password: "heyman" pasword_confirmation: "heyman")
  end
  
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test  "name should be present" do 
    @user.name = "    "
   assert_not @user.valid? 
   end
  
  
  test  "email should be present" do 
    @user.email = "    "
   assert_not @user.valid? 
   end
   
   
   test "name should not be too long" do
      @user.name = "a" * 51
    assert_not @user.valid?
  end
  
  
   test "email should not be too long" do
      @user.email = "a" * 256
    assert_not @user.valid?
  end
  
   test "emals accepts" do
 valid_addresses = %w[user@example.com USER@foo.COM Use_j@gh_s.com
   first@valid.coj.com  ]

     valid_addresses.each do |valid_address|
      @user.email  = valid_address
    assert @user.valid?, "Address #{valid_address.inspect} should be valid"
  end
end

 test  "do not accept invalid emails" do
   invalid_addresses = %w[user@example.com USER@foo.COM Use_j@gh_s.com
   first@valid.coj.com fjal@kldsfnclkI+nbak.com ]

     invalid_addresses.each do |invalid_address|
      @user.email  = valid_address
    assert_not @user.valid?  "Address #{invalid_address.inspect} is not valid "
  end
  end

test "email should be unique"do 
  duplicate_user = @user.dup
  duplicate_user.email = @user.email.upcase
  @user.save
  assert_not duplciate_user.valid?
end
  
   test "userpass not too long" do
      @user.password = @user.password_confirmation  = "a" * 5
    assert_not @user.valid?
  end
end