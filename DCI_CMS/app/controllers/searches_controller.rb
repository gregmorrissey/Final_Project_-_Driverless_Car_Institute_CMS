class SearchesController < ApplicationController

  def index
    @searches = Search.all
  end

  def show
    @search = Search.find_by(id: params[:id])
  end

  def new
  end

  def create
    @search = Search.new
    @search.user_id = params[:user_id]
    @search.search_text = params[:search_text]

    if @search.save
      redirect_to searches_url, notice: "Search created successfully."
    else
      render 'new'
    end
  end

  def edit
    @search = Search.find_by(id: params[:id])
  end

  def update
    @search = Search.find_by(id: params[:id])
    @search.user_id = params[:user_id]
    @search.search_text = params[:search_text]

    if @search.save
      redirect_to searches_url, notice: "Search updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @search = Search.find_by(id: params[:id])
    @search.destroy

    redirect_to searches_url, notice: "Search deleted."
  end
end
