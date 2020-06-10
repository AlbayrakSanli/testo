require 'test_helper'

class FurkansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furkan = furkans(:one)
  end

  test "should get index" do
    get furkans_url
    assert_response :success
  end

  test "should get new" do
    get new_furkan_url
    assert_response :success
  end

  test "should create furkan" do
    assert_difference('Furkan.count') do
      post furkans_url, params: { furkan: {  } }
    end

    assert_redirected_to furkan_url(Furkan.last)
  end

  test "should show furkan" do
    get furkan_url(@furkan)
    assert_response :success
  end

  test "should get edit" do
    get edit_furkan_url(@furkan)
    assert_response :success
  end

  test "should update furkan" do
    patch furkan_url(@furkan), params: { furkan: {  } }
    assert_redirected_to furkan_url(@furkan)
  end

  test "should destroy furkan" do
    assert_difference('Furkan.count', -1) do
      delete furkan_url(@furkan)
    end

    assert_redirected_to furkans_url
  end
end
