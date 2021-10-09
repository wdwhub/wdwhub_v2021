class AddVenuePermalinkToAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :attractions, :venue_permalink, :string
  end
end
