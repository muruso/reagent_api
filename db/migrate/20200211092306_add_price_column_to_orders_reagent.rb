class AddPriceColumnToOrdersReagent < ActiveRecord::Migration[6.0]
  def change
    add_column :orders_reagents, :reagent_price, :integer
  end
end
