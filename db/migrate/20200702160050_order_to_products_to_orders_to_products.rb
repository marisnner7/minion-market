class OrderToProductsToOrdersToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_table :order_to_products, :orders_to_products
  end
end
