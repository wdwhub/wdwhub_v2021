class AddExtinctOnUncertainToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :extinct_on_uncertain, :string
  end
end
