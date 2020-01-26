class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.time :ordered_at
      t.time :delivered_at
      t.integer :user_id

      t.timestamps
    end
  end
end
