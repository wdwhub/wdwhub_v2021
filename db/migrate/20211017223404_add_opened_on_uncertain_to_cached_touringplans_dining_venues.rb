class AddOpenedOnUncertainToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :opened_on_uncertain, :string
  end
end
