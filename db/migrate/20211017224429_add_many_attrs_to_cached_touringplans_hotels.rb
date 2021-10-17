class AddManyAttrsToCachedTouringplansHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :cached_touringplans_hotels, :address, :string
    add_column :cached_touringplans_hotels, :city, :string
    add_column :cached_touringplans_hotels, :state_code, :string
    add_column :cached_touringplans_hotels, :zip_code, :string
    add_column :cached_touringplans_hotels, :phone_number, :string
    add_column :cached_touringplans_hotels, :url, :string
    add_column :cached_touringplans_hotels, :off_site, :boolean
    add_column :cached_touringplans_hotels, :water_sports, :boolean
    add_column :cached_touringplans_hotels, :marina, :boolean
    add_column :cached_touringplans_hotels, :beach, :boolean
    add_column :cached_touringplans_hotels, :tennis, :boolean
    add_column :cached_touringplans_hotels, :biking, :boolean
    add_column :cached_touringplans_hotels, :suites, :boolean
    add_column :cached_touringplans_hotels, :concierge_floor, :boolean
    add_column :cached_touringplans_hotels, :room_service, :boolean
    add_column :cached_touringplans_hotels, :wired_internet, :boolean
    add_column :cached_touringplans_hotels, :wireless_internet, :boolean
    add_column :cached_touringplans_hotels, :num_rooms, :integer
    add_column :cached_touringplans_hotels, :theme, :string
    add_column :cached_touringplans_hotels, :cost_range, :string
    add_column :cached_touringplans_hotels, :shuttle_to_parks, :boolean
    add_column :cached_touringplans_hotels, :cost_estimate, :string
    add_column :cached_touringplans_hotels, :lodging_area_code, :string
  end
end
