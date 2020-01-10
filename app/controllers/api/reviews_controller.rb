class Api::SessionsController < ApplicationController
    def show
        @review = Review.find_by(params[:user_id])
    end

    def index
        @reviews = Review.where(book_id: params[:book_id])
    end

    def update
        @review = REview.find(params[:id])
        if @review.update(review_params)
            render :show
        else
            render json: @review.errors.full_messages, status: 400
        end
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            render :show
        else
            render json: @review.errors.full_messages, status: 400
        end
    end

    def destroy

    end

    private

    def review_params

    end
  
end
