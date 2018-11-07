require "application_system_test_case"

class AmmunitionsTest < ApplicationSystemTestCase
  setup do
    @ammunition = ammunitions(:one)
  end

  test "visiting the index" do
    visit ammunitions_url
    assert_selector "h1", text: "Ammunitions"
  end

  test "creating a Ammunition" do
    visit ammunitions_url
    click_on "New Ammunition"

    fill_in "Country", with: @ammunition.country
    fill_in "Energy", with: @ammunition.energy
    fill_in "Name", with: @ammunition.name
    fill_in "Note", with: @ammunition.note
    fill_in "Speed", with: @ammunition.speed
    fill_in "Type Bul", with: @ammunition.type_bul
    fill_in "Weight", with: @ammunition.weight
    click_on "Create Ammunition"

    assert_text "Ammunition was successfully created"
    click_on "Back"
  end

  test "updating a Ammunition" do
    visit ammunitions_url
    click_on "Edit", match: :first

    fill_in "Country", with: @ammunition.country
    fill_in "Energy", with: @ammunition.energy
    fill_in "Name", with: @ammunition.name
    fill_in "Note", with: @ammunition.note
    fill_in "Speed", with: @ammunition.speed
    fill_in "Type Bul", with: @ammunition.type_bul
    fill_in "Weight", with: @ammunition.weight
    click_on "Update Ammunition"

    assert_text "Ammunition was successfully updated"
    click_on "Back"
  end

  test "destroying a Ammunition" do
    visit ammunitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ammunition was successfully destroyed"
  end
end
