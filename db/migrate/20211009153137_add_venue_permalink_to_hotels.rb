class AddVenuePermalinkToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :venue_permalink, :string
  end
end
