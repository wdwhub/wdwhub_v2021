class AddVenuePermalinkToDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :dining_venues, :venue_permalink, :string
  end
end
