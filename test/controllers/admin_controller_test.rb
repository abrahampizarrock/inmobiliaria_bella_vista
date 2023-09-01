require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get manage_buildings" do
    get admin_manage_buildings_url
    assert_response :success
  end

  test "should get manage_apartments" do
    get admin_manage_apartments_url
    assert_response :success
  end
end
