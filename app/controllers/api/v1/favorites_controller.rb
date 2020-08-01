module Api
  module V1
    class FavoritesController < ApplicationController
      before_action :authenticate_api_v1_user!, only: %i[index show destroy]

      def index
        @favorites = @current_api_v1_user.favorites
        render json: @favorites
      end

      def create
        @favorite = Favorite.create(favorite_params)
        if @favorite.valid?
          render json: @favorite
        else
          render json: { errors: @favorite.errors.full_messages }
        end
      end

      def destroy
        @favorite = @current_api_v1_user.favorites.find(params[:id])
        @favorite.destroy
      end

      private

      def favorite_params
        params.permit(:creator_id, :color_palette)
      end
    end
  end
end
