class BookmarksController < ApplicationController
  # def new
  #   @bookmark = Bookmark.new
  #   @list = List.find(params[:list_id])
  # end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @reviews = @list.reviews
    @review = Review.new
    if @bookmark.save
      flash[:success] = "Object successfully created"
      redirect_to list_path(params[:list_id])
    else
      flash[:error] = "Something went wrong"
      @movies = @list.movies
      render 'lists/show'
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
