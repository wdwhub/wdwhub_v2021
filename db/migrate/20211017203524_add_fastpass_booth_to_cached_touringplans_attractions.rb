class AddFastpassBoothToCachedTouringplansAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_attractions, :fastpass_booth, :boolean
  end
end
