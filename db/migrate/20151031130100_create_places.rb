class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :entrance_id
      t.string :node_id
      t.string :place_id
      t.string :name
      t.integer :entrance_type
      t.integer :door_type
      t.integer :level_difference

      t.timestamps null: false
    end
  end
end
