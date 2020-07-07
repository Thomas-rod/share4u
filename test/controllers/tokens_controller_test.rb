require 'test_helper'

class TokensControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tokens_show_url
    assert_response :success
  end

  test "should get create" do
    get tokens_create_url
    assert_response :success
  end

  test "should get update" do
    get tokens_update_url
    assert_response :success
  end

end
