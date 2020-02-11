# 注文確定した時点で総額データ持つようにする

class Order < ApplicationRecord
  has_many :orders_reagents
  has_many :reagents, through: :orders_reagents
end

