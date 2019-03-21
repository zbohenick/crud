require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "should not save post without body text" do
    post = Post.new
    assert_not post.save, "Saved the post without body text"
  end
end
