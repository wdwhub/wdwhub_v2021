class AddShortNameToAttraction < ActiveRecord::Migration[6.1]
  def change
    add_column :attractions, :short_name, :string
  end
end
