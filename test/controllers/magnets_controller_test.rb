require 'test_helper'

class MagnetsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get magnets_show_url
    assert_response :success
  end

  test "should get index" do
    get magnets_index_url
    assert_response :success
  end

  test "should get create" do
    get magnets_create_url
    assert_response :success
  end

  test "should get update" do
    get magnets_update_url
    assert_response :success
  end

end
