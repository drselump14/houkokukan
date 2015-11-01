class ReviewsController < ApplicationController
  protect_from_forgery except: [:create]

  def index
    @reviews = Review.find_by(uuid: params[:uuid])
    respond_to do |format|
      format.json { render json: @reviews }
    end
  end

  def create
    @review = Review.create(review_params)
    respond_to do |format|
      format.json { render json: @review }
    end
  end

  private
    def review_params
      params.permit(:title, :uuid, :subtitle, :content, :reviewer)
    end
end
