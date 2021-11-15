require "test_helper"

class DotaherosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dotaheros_index_url
    assert_response :success
  end

  test "should get show" do
    get dotaheros_show_url
    assert_response :success
  end

  test "should get new" do
    get dotaheros_new_url
    assert_response :success
  end

  test "should get edit" do
    get dotaheros_edit_url
    assert_response :success
  end
end
