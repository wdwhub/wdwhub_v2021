require "application_system_test_case"

class EateriesTest < ApplicationSystemTestCase
  setup do
    @eatery = eateries(:one)
  end

  test "visiting the index" do
    visit eateries_url
    assert_selector "h1", text: "Eateries"
  end

  test "creating a Eatery" do
    visit eateries_url
    click_on "New Eatery"

    fill_in "Name", with: @eatery.name
    click_on "Create Eatery"

    assert_text "Eatery was successfully created"
    click_on "Back"
  end

  test "updating a Eatery" do
    visit eateries_url
    click_on "Edit", match: :first

    fill_in "Name", with: @eatery.name
    click_on "Update Eatery"

    assert_text "Eatery was successfully updated"
    click_on "Back"
  end

  test "destroying a Eatery" do
    visit eateries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eatery was successfully destroyed"
  end
end
