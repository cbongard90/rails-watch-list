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

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      flash[:success] = 'Bookmark was successfully deleted.'
      redirect_to list_path(@bookmark.list)
    else
      flash[:error] = 'Something went wrong'
      redirect_to list_path(@bookmark.list)
    end
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
