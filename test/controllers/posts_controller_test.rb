require 'test-helper'

# PostsControllersTest
class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get posts_index_url
    assert_response :success
    assert_template 'index'
    assert_select 'h1', 'Posts'
    assert_select 'p', 'There are no posts yet.'
  end
end
