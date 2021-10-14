class AddShortNameToHotel < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :short_name, :string
  end
end
