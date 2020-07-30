module Api
  module V1
    class PalettesController < ApplicationController
      before_action :authenticate_api_v1_user!, only: %i[index show destroy]

      def index
        @palettes = @current_api_v1_user.palettes
        render json: @palettes
      end

      def create
        @palette = Palette.create(palette_params)
        if @palette.valid?
          render json: @palette
        else
          render json: { errors: @palette.errors.full_messages }
        end
      end

      def destroy
        @palette = @current_api_v1_user.palettes.find(params[:id])
        @palette.destroy
      end

      private

      def palette_params
        params.permit(:creator_id, :palette_id)
      end
    end
  end
end
