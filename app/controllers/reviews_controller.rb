class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
  end

  def create
    @review = Review.new(reviews_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private
  def reviews_params
    params.require(:review).permit(:title, :details, :completed)
  end
end
