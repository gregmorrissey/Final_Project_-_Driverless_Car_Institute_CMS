class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
  end

  def new
  end

  def create
    @favorite = Favorite.new
    @favorite.user_id = params[:user_id]
    @favorite.post_id = params[:post_id]

    if @favorite.save
      redirect_to favorites_url, notice: "Favorite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find_by(id: params[:id])
  end

  def update
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.user_id = params[:user_id]
    @favorite.post_id = params[:post_id]

    if @favorite.save
      redirect_to favorites_url, notice: "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy

    redirect_to favorites_url, notice: "Favorite deleted."
  end
end
