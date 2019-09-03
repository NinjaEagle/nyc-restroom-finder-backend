class RestroomsController < ApplicationController
    def index 
        restrooms = Restroom.all 
    
        render json: restrooms 
    end

    def show 
        restroom = Restroom.find(params[:id])
        render json: restroom
    end

    def new 
        restroom = Restroom.new 
        render json: restroom
    end

    def create 
        restroom = Restroom.create(restroom_params)
        render json: restroom
    end

    def update
        restroom = Restroom.find(params[:id])
        render json: restroom
    end

    def destroy
        restroom = Restroom.find(params[:id])
        restroom.destroy 
        render json: restroom
    end

    private 

    def user_params
        params.require(:restroom).permit(:name, :longitude, :latitude, :wheelchair_accessible, :restroom_type)
    end
end
