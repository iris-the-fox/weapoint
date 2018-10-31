require 'test_helper'

class AmmunitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ammunition = ammunitions(:one)
  end

  test "should get index" do
    get ammunitions_url
    assert_response :success
  end

  test "should get new" do
    get new_ammunition_url
    assert_response :success
  end

  test "should create ammunition" do
    assert_difference('Ammunition.count') do
      post ammunitions_url, params: { ammunition: { country: @ammunition.country, energy: @ammunition.energy, name: @ammunition.name, note: @ammunition.note, speed: @ammunition.speed, type_bul: @ammunition.type_bul, weight: @ammunition.weight } }
    end

    assert_redirected_to ammunition_url(Ammunition.last)
  end

  test "should show ammunition" do
    get ammunition_url(@ammunition)
    assert_response :success
  end

  test "should get edit" do
    get edit_ammunition_url(@ammunition)
    assert_response :success
  end

  test "should update ammunition" do
    patch ammunition_url(@ammunition), params: { ammunition: { country: @ammunition.country, energy: @ammunition.energy, name: @ammunition.name, note: @ammunition.note, speed: @ammunition.speed, type_bul: @ammunition.type_bul, weight: @ammunition.weight } }
    assert_redirected_to ammunition_url(@ammunition)
  end

  test "should destroy ammunition" do
    assert_difference('Ammunition.count', -1) do
      delete ammunition_url(@ammunition)
    end

    assert_redirected_to ammunitions_url
  end
end
