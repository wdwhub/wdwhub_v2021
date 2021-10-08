class CreateCachedTouringplansHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :cached_touringplans_hotels do |t|
      t.string :name
      t.string :short_name
      t.string :permalink
      t.string :category_code

      t.timestamps
    end
  end
end
