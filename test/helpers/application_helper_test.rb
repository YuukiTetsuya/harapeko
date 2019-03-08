require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,              "HARAPEKO。"
    assert_equal full_title("利用規約"),  "利用規約 | HARAPEKO。"
  end
end