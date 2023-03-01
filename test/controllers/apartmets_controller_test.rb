require "test_helper"

class ApartmetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get apartmets_create_url
    assert_response :success
  end

  test "should get show" do
    get apartmets_show_url
    assert_response :success
  end

  test "should get update" do
    get apartmets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get apartmets_destroy_url
    assert_response :success
  end
end
