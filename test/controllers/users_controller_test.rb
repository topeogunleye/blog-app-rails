# Make sure that for each action you check:
#                                      If response status was correct.
#   If a correct template was rendered.
#     If the response body includes correct placeholder text.

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_index_url
    assert_response :success
    assert_template 'index'
    assert_select 'h1', 'Users'
    assert_select 'p', 'There are no users yet.'
  end
end