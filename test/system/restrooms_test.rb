require "application_system_test_case"

class RestroomsTest < ApplicationSystemTestCase
  setup do
    @restroom = restrooms(:one)
  end

  test "visiting the index" do
    visit restrooms_url
    assert_selector "h1", text: "Restrooms"
  end

  test "creating a Restroom" do
    visit restrooms_url
    click_on "New Restroom"

    fill_in "Latitude", with: @restroom.latitude
    fill_in "Longitude", with: @restroom.longitude
    fill_in "Type", with: @restroom.type
    check "Wheelchair" if @restroom.wheelchair
    click_on "Create Restroom"

    assert_text "Restroom was successfully created"
    click_on "Back"
  end

  test "updating a Restroom" do
    visit restrooms_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @restroom.latitude
    fill_in "Longitude", with: @restroom.longitude
    fill_in "Type", with: @restroom.type
    check "Wheelchair" if @restroom.wheelchair
    click_on "Update Restroom"

    assert_text "Restroom was successfully updated"
    click_on "Back"
  end

  test "destroying a Restroom" do
    visit restrooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restroom was successfully destroyed"
  end
end
