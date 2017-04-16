# frozen_string_literal: true

require "test_helper"

class QQTest < Minitest::Test
  test "detects QQ browser for iOS" do
    browser = Browser.new(Browser["QQ_BROWSER_IOS"])

    assert_equal "6.3.3.432", browser.full_version
    assert_equal "QQ Browser", browser.name
    assert_equal :qq, browser.id
  end

  test "detects QQ browser for Android" do
    browser = Browser.new(Browser["QQ_BROWSER_ANDROID"])

    assert_equal "6.2", browser.full_version
    assert_equal "QQ Browser", browser.name
    assert_equal :qq, browser.id
  end
end
