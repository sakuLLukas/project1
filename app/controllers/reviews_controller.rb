class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all 
    end

    def new 
        @review = Review.new
    end

    def create 
        review = Review.create review_params
        game = Game.find params[:review][:game_id]
        game.reviews << review
        redirect_to reviews_path
    end

    private 
    def review_params
        params.require(:review).permit(:title, :description)
    end
end