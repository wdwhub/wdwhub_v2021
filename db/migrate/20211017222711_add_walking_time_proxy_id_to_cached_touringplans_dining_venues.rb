class AddWalkingTimeProxyIdToCachedTouringplansDiningVenues < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_dining_venues, :walking_time_proxy_id, :integer
  end
end
