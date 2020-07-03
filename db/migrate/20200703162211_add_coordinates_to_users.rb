class AddCoordinatesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :latitute, :float
    add_column :users, :longitude, :float
  end
end
