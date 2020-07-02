class CreateOrderToProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_to_products do |t|
      t.integer :quantity
      t.integer :unit_price
      t.references :product, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
