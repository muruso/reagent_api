module Api
  module V1
    class OrdersController < ApplicationController

      # before_action :set_reagent, only: [:show, :update, :destory]

      def index
        ## TODO: fixme, add name addribute
        render json: {orders: Order.all.map {|order| 
          {
            ordered_at: order.ordered_at,
            delivered_at: order.delivered_at,
            total_price: order.total_price,
            reagents: order.orders_reagents.map{|os| {
              reagent_name: os.reagent.name,
              reagent_price: os.reagent_price,
              reagent_amount: os.reagent_amount
            }}
          }
        }}
      end

      def new
      end
    
      def show
      end

      def create
        order = Order.new(order_params)
        order.ordered_at = Time.zone.now
        orders_reagents = reagents_params.map do |reagent|
          OrdersReagent.new(reagent)
        end
        order.orders_reagents = orders_reagents
        if order.save
          render json: { status: 'SUCCESS', data: order }
        else
          render json: { status: 'ERROR', data: order.errors }
        end
      end

      private


      def order_params
        params.require(:order).permit(:user_id, :total_price)
      end

      def reagents_params
        params.require(:reagents).map do |reagent|
          reagent.permit(:reagent_id, :reagent_amount, :reagent_price)
        end
      end

    end
  end
end


