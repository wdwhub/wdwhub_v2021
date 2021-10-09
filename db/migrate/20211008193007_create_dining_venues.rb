class CreateDiningVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :dining_venues do |t|
      t.string :name
      t.string :short_name
      t.string :permalink

      t.timestamps
    end
  end
end
