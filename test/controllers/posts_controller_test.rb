require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # Sets up a post and for each test it looks up
  # the posts's one from the fixtures.
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    #get makes browser call to post's url
    get posts_url
    #asserts the response as a success
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    #checking to see if there is a difference in post count
    #from before and after
    assert_difference('Post.count') do
      #if the post count stays the same after creating a post,
      #this test will fail.
      post posts_url, params: { post: { body: @post.body, title: @post.title } }
    end
    #checks show page once the post is created
    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    #gets the post url
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { body: @post.body, title: @post.title } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
