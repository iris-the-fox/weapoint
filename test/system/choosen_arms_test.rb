require "application_system_test_case"

class ChoosenArmsTest < ApplicationSystemTestCase
  setup do
    @choosen_arm = choosen_arms(:one)
  end

  test "visiting the index" do
    visit choosen_arms_url
    assert_selector "h1", text: "Choosen Arms"
  end

  test "creating a Choosen arm" do
    visit choosen_arms_url
    click_on "New Choosen Arm"

    fill_in "Firearm", with: @choosen_arm.firearm_id
    click_on "Create Choosen arm"

    assert_text "Choosen arm was successfully created"
    click_on "Back"
  end

  test "updating a Choosen arm" do
    visit choosen_arms_url
    click_on "Edit", match: :first

    fill_in "Firearm", with: @choosen_arm.firearm_id
    click_on "Update Choosen arm"

    assert_text "Choosen arm was successfully updated"
    click_on "Back"
  end

  test "destroying a Choosen arm" do
    visit choosen_arms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Choosen arm was successfully destroyed"
  end
end
