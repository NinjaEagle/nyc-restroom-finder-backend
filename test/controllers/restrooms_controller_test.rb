require 'test_helper'

class RestroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restroom = restrooms(:one)
  end

  test "should get index" do
    get restrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_restroom_url
    assert_response :success
  end

  test "should create restroom" do
    assert_difference('Restroom.count') do
      post restrooms_url, params: { restroom: { latitude: @restroom.latitude, longitude: @restroom.longitude, type: @restroom.type, wheelchair: @restroom.wheelchair } }
    end

    assert_redirected_to restroom_url(Restroom.last)
  end

  test "should show restroom" do
    get restroom_url(@restroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_restroom_url(@restroom)
    assert_response :success
  end

  test "should update restroom" do
    patch restroom_url(@restroom), params: { restroom: { latitude: @restroom.latitude, longitude: @restroom.longitude, type: @restroom.type, wheelchair: @restroom.wheelchair } }
    assert_redirected_to restroom_url(@restroom)
  end

  test "should destroy restroom" do
    assert_difference('Restroom.count', -1) do
      delete restroom_url(@restroom)
    end

    assert_redirected_to restrooms_url
  end
end
