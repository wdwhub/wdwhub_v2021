require "test_helper"

class TouringplansCachedVenuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @touringplans_cached_venue = touringplans_cached_venues(:one)
  end

  test "should get index" do
    get touringplans_cached_venues_url
    assert_response :success
  end

  test "should get new" do
    get new_touringplans_cached_venue_url
    assert_response :success
  end

  test "should create touringplans_cached_venue" do
    assert_difference('TouringplansCachedVenue.count') do
      post touringplans_cached_venues_url, params: { touringplans_cached_venue: { name: @touringplans_cached_venue.name, permalink: @touringplans_cached_venue.permalink } }
    end

    assert_redirected_to touringplans_cached_venue_url(TouringplansCachedVenue.last)
  end

  test "should show touringplans_cached_venue" do
    get touringplans_cached_venue_url(@touringplans_cached_venue)
    assert_response :success
  end

  test "should get edit" do
    get edit_touringplans_cached_venue_url(@touringplans_cached_venue)
    assert_response :success
  end

  test "should update touringplans_cached_venue" do
    patch touringplans_cached_venue_url(@touringplans_cached_venue), params: { touringplans_cached_venue: { name: @touringplans_cached_venue.name, permalink: @touringplans_cached_venue.permalink } }
    assert_redirected_to touringplans_cached_venue_url(@touringplans_cached_venue)
  end

  test "should destroy touringplans_cached_venue" do
    assert_difference('TouringplansCachedVenue.count', -1) do
      delete touringplans_cached_venue_url(@touringplans_cached_venue)
    end

    assert_redirected_to touringplans_cached_venues_url
  end
end
