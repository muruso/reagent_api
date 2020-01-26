# TODO: 多対多の中間テーブルでどうやって登録するか


module Api
  module V1
    class OrdersController < ApplicationController

      # before_action :set_reagent, only: [:show, :update, :destory]

      def index
        render json: {orders: Order.all.map {|order| 
          {
            # name: order.user.name,
            ordered_at: order.ordered_at,
            delivered_at: order.delivered_at,
            reagents: order.orders_reagents.map{|order_reagent| {
              reagent_name: order_reagent.reagent.name,
            }}
          }
        }}
        # render json: { orders: Order.all }
      end

      def new
      end
    
      def show
      end

      def create
        order = Order.new(order_params)
        if reagent.save
          render json: { status: 'SUCCESS', data: reagent }
        else
          render json: { status: 'ERROR', data: reagent.errors }
        end
      end

      private

      def order_params
        params.require(:order)
      end

    end
  end
end


