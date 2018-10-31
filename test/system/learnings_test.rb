require "application_system_test_case"

class LearningsTest < ApplicationSystemTestCase
  setup do
    @learning = learnings(:one)
  end

  test "visiting the index" do
    visit learnings_url
    assert_selector "h1", text: "Learnings"
  end

  test "creating a Learning" do
    visit learnings_url
    click_on "New Learning"

    fill_in "Name", with: @learning.name
    fill_in "Note", with: @learning.note
    fill_in "Range", with: @learning.range
    fill_in "Tag", with: @learning.tag
    click_on "Create Learning"

    assert_text "Learning was successfully created"
    click_on "Back"
  end

  test "updating a Learning" do
    visit learnings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @learning.name
    fill_in "Note", with: @learning.note
    fill_in "Range", with: @learning.range
    fill_in "Tag", with: @learning.tag
    click_on "Update Learning"

    assert_text "Learning was successfully updated"
    click_on "Back"
  end

  test "destroying a Learning" do
    visit learnings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Learning was successfully destroyed"
  end
end
