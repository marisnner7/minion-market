class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.text :description
      t.integer :stock
      t.string :name
      t.float :price
      t.float :review
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
