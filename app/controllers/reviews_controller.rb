class ReviewsController < ApplicationController
    def index 
        reviews = Review.all 
        render json: reviews 
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end



    def create
        review = Review.create(restroom_id:params[:restroom_id],user_id:3)
        render json: review
    end

    def update
        review = Review.find(params[:id])
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy 
        render json: review
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :restroom_id)
    end
end
