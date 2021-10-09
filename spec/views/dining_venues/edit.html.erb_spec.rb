require 'rails_helper'

RSpec.describe "dining_venues/edit", type: :view do
  before(:each) do
    @dining_venue = assign(:dining_venue, DiningVenue.create!(
      name: "MyString",
      short_name: "MyString",
      permalink: "MyString"
    ))
  end

  it "renders the edit dining_venue form" do
    render

    assert_select "form[action=?][method=?]", dining_venue_path(@dining_venue), "post" do

      assert_select "input[name=?]", "dining_venue[name]"

      assert_select "input[name=?]", "dining_venue[short_name]"

      assert_select "input[name=?]", "dining_venue[permalink]"
    end
  end
end
