class AddLengthToLinkTable < ActiveRecord::Migration
  def change
    add_column :links, :length, :integer
    add_index :links, :start_node_id
    add_index :links, :finish_node_id
  end
end
