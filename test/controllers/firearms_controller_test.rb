require 'test_helper'

class FirearmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firearm = firearms(:one)
  end

  test "should get index" do
    get firearms_url
    assert_response :success
  end

  test "should get new" do
    get new_firearm_url
    assert_response :success
  end

  test "should create firearm" do
    assert_difference('Firearm.count') do
      post firearms_url, params: { firearm: { action_type: @firearm.action_type, am_cap: @firearm.am_cap, atstus: @firearm.atstus, barrel_l: @firearm.barrel_l, caliber: @firearm.caliber, country: @firearm.country, em_w: @firearm.em_w, feeding_mech: @firearm.feeding_mech, fr_mat: @firearm.fr_mat, img_main: @firearm.img_main, l_w: @firearm.l_w, name: @firearm.name, over_l: @firearm.over_l, over_l_f: @firearm.over_l_f, stock_type: @firearm.stock_type, trigger_type: @firearm.trigger_type, typearm: @firearm.typearm, year: @firearm.year } }
    end

    assert_redirected_to firearm_url(Firearm.last)
  end

  test "should show firearm" do
    get firearm_url(@firearm)
    assert_response :success
  end

  test "should get edit" do
    get edit_firearm_url(@firearm)
    assert_response :success
  end

  test "should update firearm" do
    patch firearm_url(@firearm), params: { firearm: { action_type: @firearm.action_type, am_cap: @firearm.am_cap, atstus: @firearm.atstus, barrel_l: @firearm.barrel_l, caliber: @firearm.caliber, country: @firearm.country, em_w: @firearm.em_w, feeding_mech: @firearm.feeding_mech, fr_mat: @firearm.fr_mat, img_main: @firearm.img_main, l_w: @firearm.l_w, name: @firearm.name, over_l: @firearm.over_l, over_l_f: @firearm.over_l_f, stock_type: @firearm.stock_type, trigger_type: @firearm.trigger_type, typearm: @firearm.typearm, year: @firearm.year } }
    assert_redirected_to firearm_url(@firearm)
  end

  test "should destroy firearm" do
    assert_difference('Firearm.count', -1) do
      delete firearm_url(@firearm)
    end

    assert_redirected_to firearms_url
  end
end
