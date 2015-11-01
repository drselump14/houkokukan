class CreateUcodes < ActiveRecord::Migration
  def change
    create_table :ucodes do |t|
      t.string :uuid
      t.string :place_id
      t.string :name

      t.timestamps null: false
    end
    add_index :ucodes, :uuid
  end
end
