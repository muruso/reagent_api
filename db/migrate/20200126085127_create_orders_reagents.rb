class CreateOrdersReagents < ActiveRecord::Migration[6.0]
  def change
    create_table :orders_reagents do |t|
      t.integer :order_id
      t.integer :reagent_id
      t.integer :reagent_amount

      t.timestamps
    end
  end
end
