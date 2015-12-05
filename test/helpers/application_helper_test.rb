require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,        "JS-Challenge Framework"
    assert_equal full_title("Help"), "Help | Framework"
  end
end