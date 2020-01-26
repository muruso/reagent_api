class OrdersReagent < ApplicationRecord
  belongs_to :reagent
  belongs_to :order
end
