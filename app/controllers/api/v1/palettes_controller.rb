module Api
  module V1
    class PalettesController < ApplicationController

      def create
        @palette = Palette.create(palette_params)
        if @palette.valid?
          render json: @palette
        else
          render json: { errors: @palette.errors.full_messages }
        end
      end

      def destroy
        @palette = Palettes.find(params[:id])
        @palette.destroy
      end

      private

      def palette_params
        params.permit(:color_palette)
      end
    end
  end
end
