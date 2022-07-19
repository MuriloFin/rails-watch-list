class ListsController < ApplicationController

  def lists
    @list = List.all
  end

  def show_a_movie
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(review_params)
    @list = List.find(params[:list_id])
    @list.save
  end

  private

  def review_params
    params.require(:list).permit(:name)
  end
end
