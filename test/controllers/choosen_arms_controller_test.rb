require 'test_helper'

class ChoosenArmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @choosen_arm = choosen_arms(:one)
  end

  test "should get index" do
    get choosen_arms_url
    assert_response :success
  end

  test "should get new" do
    get new_choosen_arm_url
    assert_response :success
  end

  test "should create choosen_arm" do
    assert_difference('ChoosenArm.count') do
      post choosen_arms_url, params: { choosen_arm: { firearm_id: @choosen_arm.firearm_id } }
    end

    assert_redirected_to choosen_arm_url(ChoosenArm.last)
  end

  test "should show choosen_arm" do
    get choosen_arm_url(@choosen_arm)
    assert_response :success
  end

  test "should get edit" do
    get edit_choosen_arm_url(@choosen_arm)
    assert_response :success
  end

  test "should update choosen_arm" do
    patch choosen_arm_url(@choosen_arm), params: { choosen_arm: { firearm_id: @choosen_arm.firearm_id } }
    assert_redirected_to choosen_arm_url(@choosen_arm)
  end

  test "should destroy choosen_arm" do
    assert_difference('ChoosenArm.count', -1) do
      delete choosen_arm_url(@choosen_arm)
    end

    assert_redirected_to choosen_arms_url
  end
end
