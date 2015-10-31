class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :link_id
      t.string :start_node_id
      t.string :finish_node_id
      t.integer :link_type
      t.float :width
      t.boolean :level_difference
      t.float :level_latitude
      t.float :level_longitude
      t.boolean :dot_block

      t.timestamps null: false
    end
  end
end
