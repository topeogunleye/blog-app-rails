require 'test-helper'
# Make sure that for each action you check:
#                                      If response status was correct.
#   If a correct template was rendered.
#     If the response body includes correct placeholder text.
class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get posts_index_url
    assert_response :success
    assert_template 'index'
    assert_select 'h1', 'Posts'
    assert_select 'p', 'There are no posts yet.'
  end
end