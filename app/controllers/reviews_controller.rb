class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    @bookmark = Bookmark.new
    if @review.save
      flash[:success] = "Object successfully created"
    else
      flash[:error] = "Something went wrong"
      @reviews = @list.reviews
      @movies = @list.movies
    end
    redirect_to list_path(params[:list_id])
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
