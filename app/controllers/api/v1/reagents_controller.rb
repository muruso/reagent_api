module Api
  module V1
    class ReagentsController < ApplicationController

      before_action :set_reagent, only: [:show, :update, :destory]

      def new
      end
    
      def show
      end

      def create
        reagent = Reagent.new(reagent_params)
        if reagent.save
          render json: { status: 'SUCCESS', data: reagent }
        else
          render json: { status: 'ERROR', data: reagent.errors }
        end
      end

      private

      def reagent_params
        params.require(:reagent).permit(:name, :maker, :model_num, :capacity, :price)
      end

    end
  end
end


