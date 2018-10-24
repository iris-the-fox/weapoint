require "application_system_test_case"

class FirearmsTest < ApplicationSystemTestCase
  setup do
    @firearm = firearms(:one)
  end

  test "visiting the index" do
    visit firearms_url
    assert_selector "h1", text: "Firearms"
  end

  test "creating a Firearm" do
    visit firearms_url
    click_on "New Firearm"

    fill_in "Action Type", with: @firearm.action_type
    fill_in "Am Cap", with: @firearm.am_cap
    fill_in "Atstus", with: @firearm.atstus
    fill_in "Barrel L", with: @firearm.barrel_l
    fill_in "Caliber", with: @firearm.caliber
    fill_in "Country", with: @firearm.country
    fill_in "Em W", with: @firearm.em_w
    fill_in "Feeding Mech", with: @firearm.feeding_mech
    fill_in "Fr Mat", with: @firearm.fr_mat
    fill_in "Img Main", with: @firearm.img_main
    fill_in "L W", with: @firearm.l_w
    fill_in "Name", with: @firearm.name
    fill_in "Over L", with: @firearm.over_l
    fill_in "Over L F", with: @firearm.over_l_f
    fill_in "Stock Type", with: @firearm.stock_type
    fill_in "Trigger Type", with: @firearm.trigger_type
    fill_in "Typearm", with: @firearm.typearm
    fill_in "Year", with: @firearm.year
    click_on "Create Firearm"

    assert_text "Firearm was successfully created"
    click_on "Back"
  end

  test "updating a Firearm" do
    visit firearms_url
    click_on "Edit", match: :first

    fill_in "Action Type", with: @firearm.action_type
    fill_in "Am Cap", with: @firearm.am_cap
    fill_in "Atstus", with: @firearm.atstus
    fill_in "Barrel L", with: @firearm.barrel_l
    fill_in "Caliber", with: @firearm.caliber
    fill_in "Country", with: @firearm.country
    fill_in "Em W", with: @firearm.em_w
    fill_in "Feeding Mech", with: @firearm.feeding_mech
    fill_in "Fr Mat", with: @firearm.fr_mat
    fill_in "Img Main", with: @firearm.img_main
    fill_in "L W", with: @firearm.l_w
    fill_in "Name", with: @firearm.name
    fill_in "Over L", with: @firearm.over_l
    fill_in "Over L F", with: @firearm.over_l_f
    fill_in "Stock Type", with: @firearm.stock_type
    fill_in "Trigger Type", with: @firearm.trigger_type
    fill_in "Typearm", with: @firearm.typearm
    fill_in "Year", with: @firearm.year
    click_on "Update Firearm"

    assert_text "Firearm was successfully updated"
    click_on "Back"
  end

  test "destroying a Firearm" do
    visit firearms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Firearm was successfully destroyed"
  end
end
