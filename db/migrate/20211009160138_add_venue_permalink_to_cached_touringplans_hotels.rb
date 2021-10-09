class AddVenuePermalinkToCachedTouringplansHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_hotels, :venue_permalink, :string
  end
end
