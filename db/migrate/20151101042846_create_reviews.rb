class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :uuid
      t.string :title
      t.string :subtitle
      t.string :reviewer
      t.text :content

      t.timestamps null: false
    end
  end
end
