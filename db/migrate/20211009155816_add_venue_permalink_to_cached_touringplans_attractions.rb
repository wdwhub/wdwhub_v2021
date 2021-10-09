class AddVenuePermalinkToCachedTouringplansAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_attractions, :venue_permalink, :string
  end
end
