class AddLatAndLongToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :latitude, :string
    add_column :cached_touringplans_dining_venues, :longitude, :string
  end
end
