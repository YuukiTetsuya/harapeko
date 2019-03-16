require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", term_path
    assert_select "a[href=?]", privacy_policy_path
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("お問い合わせ")
    get signup_path
    assert_select "title", full_title('新規登録')
  end
end
