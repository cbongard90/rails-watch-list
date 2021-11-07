class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new
    @movies = @list.movies
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:success] = "Object successfully created"
      redirect_to @list
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def destroy
    if @list.destroy
      flash[:success] = 'List was successfully deleted.'
      redirect_to root_path
    else
      flash[:error] = 'Something went wrong'
      render 'show'
    end
  end


  private

  def set_list
    @list = List.find(params[:id])
  end


  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
