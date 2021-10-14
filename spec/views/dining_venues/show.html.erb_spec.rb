require 'rails_helper'

RSpec.describe "dining_venues/show", type: :view do
  before(:each) do
    @dining_venue = assign(:dining_venue, DiningVenue.create!(
      name: "Name",
      short_name: "Short Name",
      permalink: "Permalink"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Short Name/)
    expect(rendered).to match(/Permalink/)
  end
end
