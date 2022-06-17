require 'test-helper'

# UsersControllersTest
class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_index_url
    assert_response :success
    assert_template 'index'
    assert_select 'h1', 'Users'
    assert_select 'p', 'There are no users yet.'
  end
end
