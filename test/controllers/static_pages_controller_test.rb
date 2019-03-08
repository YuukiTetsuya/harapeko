require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "HARAPEKO。"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "老舗食堂専用レビューサイト | #{@base_title}"
  end

  test "should get term" do
    get term_path
    assert_response :success
    assert_select "title", "利用規約 | #{@base_title}"
  end

  test "should get privacy_policy" do
    get privacy_policy_path
    assert_response :success
    assert_select "title", "プライバシーポリシー | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "お問い合わせ | #{@base_title}"
  end

end
