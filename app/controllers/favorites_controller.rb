class FavoritesController < ApplicationController
    def index 
        favorites = Favorite.all 
        render json: favorites 
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    # def new
    #     favorite = Favorite.new
    #     render json: favorite
    # end

    def create
        # byebug 
    #     t.integer "user_id"
    # t.integer "restroom_id"
        favorite = Favorite.create(restroom_id:params[:restroom_id],user_id:3)
        render json: favorite
    end

    def update
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy 
        render json: favorite
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :restroom_id)
    end
end
