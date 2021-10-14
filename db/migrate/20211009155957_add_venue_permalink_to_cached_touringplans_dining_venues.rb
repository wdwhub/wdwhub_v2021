class AddVenuePermalinkToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :venue_permalink, :string
  end
end
