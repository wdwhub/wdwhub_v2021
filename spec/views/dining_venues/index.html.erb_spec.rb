require 'rails_helper'

RSpec.describe "dining_venues/index", type: :view do
  before(:each) do
    assign(:dining_venues, [
      DiningVenue.create!(
        name: "Name",
        short_name: "Short Name",
        permalink: "Permalink"
      ),
      DiningVenue.create!(
        name: "Name",
        short_name: "Short Name",
        permalink: "Permalink"
      )
    ])
  end

  it "renders a list of dining_venues" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Short Name".to_s, count: 2
    assert_select "tr>td", text: "Permalink".to_s, count: 2
  end
end
