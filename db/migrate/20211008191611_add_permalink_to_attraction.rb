class AddPermalinkToAttraction < ActiveRecord::Migration[6.1]
  def change
    add_column :attractions, :permalink, :string
  end
end
