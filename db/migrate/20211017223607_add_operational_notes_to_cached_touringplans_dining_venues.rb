class AddOperationalNotesToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :operational_notes, :text
  end
end
