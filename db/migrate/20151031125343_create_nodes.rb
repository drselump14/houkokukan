class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :node_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :height

      t.timestamps null: false
    end
    add_index :nodes, :node_id, unique: true
  end
end
