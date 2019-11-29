require 'test_helper'

class ReagentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reagents_new_url
    assert_response :success
  end

  test "should get show" do
    get reagents_show_url
    assert_response :success
  end

end
