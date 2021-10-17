class AddSummaryAtTopToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :summary_at_top, :string
  end
end
