require 'rails_helper'

RSpec.describe "dining_venues/new", type: :view do
  before(:each) do
    assign(:dining_venue, DiningVenue.new(
      name: "MyString",
      short_name: "MyString",
      permalink: "MyString"
    ))
  end

  it "renders new dining_venue form" do
    render

    assert_select "form[action=?][method=?]", dining_venues_path, "post" do

      assert_select "input[name=?]", "dining_venue[name]"

      assert_select "input[name=?]", "dining_venue[short_name]"

      assert_select "input[name=?]", "dining_venue[permalink]"
    end
  end
end
