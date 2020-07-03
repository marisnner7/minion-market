class ChangeLatituteToLatitude < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :latitute, :latitude
  end
end
