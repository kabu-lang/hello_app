require 'test_helper'

class UsersActivationTest < ActionDispatch::IntegrationTest

def setup
  @user = users(:michael)
  @other_user = users(:archer)
  @non_active_user = users(:Kati)
end

test "index only activated user" do
  log_in_as(@user)
  get users_path
  assert_select 'a[href=?]',user_path(@other_user)
  assert_select 'a[href=?]',user_path(@non_active_user), count:0
end

test "show only activated user" do
  log_in_as(@other_user)
  get user_path(@user)
  assert_template 'users/show'
  get user_path(@non_active_user)
  # assert_redirected_to root_url

end



end
