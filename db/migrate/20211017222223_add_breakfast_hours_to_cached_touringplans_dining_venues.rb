class AddBreakfastHoursToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :breakfast_hours, :string
  end
end
