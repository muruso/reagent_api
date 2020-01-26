class AddReagentIdToReagent < ActiveRecord::Migration[6.0]
  def change
    add_column :reagents, :reagent_id, :integer
  end
end
