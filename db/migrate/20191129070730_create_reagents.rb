class CreateReagents < ActiveRecord::Migration[6.0]
  def change
    create_table :reagents do |t|
      t.string :name
      t.string :maker
      t.integer :model_num
      t.string :capacity
      t.integer :price
      t.string :consumption_per_week

      t.timestamps
    end
  end
end
