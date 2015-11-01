class ChangeLatitudeLongitudeDataFormat < ActiveRecord::Migration
  def change
    change_column :nodes, :latitude, :decimal, precision: 15, scale: 10
    change_column :nodes, :longitude, :decimal, precision: 15, scale: 10
  end
end
