class CreateReagents < ActiveRecord::Migration[6.0]
  def change
    create_table :reagents do |t|
      t.str :name
      t.str :maker
      t.integer :model_num
      t.str :capacity
      t.int :price
      t.str :consumption_per_week

      t.timestamps
    end
  end
end
