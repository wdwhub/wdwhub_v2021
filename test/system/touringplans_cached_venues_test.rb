require "application_system_test_case"

class TouringplansCachedVenuesTest < ApplicationSystemTestCase
  setup do
    @touringplans_cached_venue = touringplans_cached_venues(:one)
  end

  test "visiting the index" do
    visit touringplans_cached_venues_url
    assert_selector "h1", text: "Touringplans Cached Venues"
  end

  test "creating a Touringplans cached venue" do
    visit touringplans_cached_venues_url
    click_on "New Touringplans Cached Venue"

    fill_in "Name", with: @touringplans_cached_venue.name
    fill_in "Permalink", with: @touringplans_cached_venue.permalink
    click_on "Create Touringplans cached venue"

    assert_text "Touringplans cached venue was successfully created"
    click_on "Back"
  end

  test "updating a Touringplans cached venue" do
    visit touringplans_cached_venues_url
    click_on "Edit", match: :first

    fill_in "Name", with: @touringplans_cached_venue.name
    fill_in "Permalink", with: @touringplans_cached_venue.permalink
    click_on "Update Touringplans cached venue"

    assert_text "Touringplans cached venue was successfully updated"
    click_on "Back"
  end

  test "destroying a Touringplans cached venue" do
    visit touringplans_cached_venues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Touringplans cached venue was successfully destroyed"
  end
end
