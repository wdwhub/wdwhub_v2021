class AddOperatorIdToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :operator_id, :integer
  end
end
