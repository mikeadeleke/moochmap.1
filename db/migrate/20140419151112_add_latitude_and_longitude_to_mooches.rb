class AddLatitudeAndLongitudeToMooches < ActiveRecord::Migration
  def change
    add_column :mooches, :latitude, :float
    add_column :mooches, :longitude, :float
  end
end
