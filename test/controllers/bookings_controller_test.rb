require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bookings_new_url
    assert_response :success
  end

  test "should get create" do
    get bookings_create_url
    assert_response :success
  end

  test "should get confirm" do
    get bookings_confirm_url
    assert_response :success
  end

  test "should get reject" do
    get bookings_reject_url
    assert_response :success
  end

  test "should get destroy" do
    get bookings_destroy_url
    assert_response :success
  end

end
