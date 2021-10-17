class AddMobileOrderingToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :mobile_ordering, :boolean
  end
end
