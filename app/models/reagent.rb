class Reagent < ApplicationRecord
  has_many :orders_reagents
  has_many :orders, through: :orders_reagents
end
