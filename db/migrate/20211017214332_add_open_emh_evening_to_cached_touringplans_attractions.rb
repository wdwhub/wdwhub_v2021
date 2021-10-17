class AddOpenEmhEveningToCachedTouringplansAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_attractions, :open_emh_evening, :boolean
  end
end
