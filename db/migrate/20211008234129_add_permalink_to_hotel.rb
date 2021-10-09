class AddPermalinkToHotel < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :permalink, :string
  end
end
