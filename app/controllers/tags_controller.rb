class TagsController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find_by(id: params[:id])
  end

  def new
  end

  def create
    @tag = Tag.new
    @tag.name = params[:name]

    if @tag.save
      redirect_to tags_url, notice: "Tag created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tag = Tag.find_by(id: params[:id])
  end

  def update
    @tag = Tag.find_by(id: params[:id])
    @tag.name = params[:name]

    if @tag.save
      redirect_to tags_url, notice: "Tag updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tag = Tag.find_by(id: params[:id])
    @tag.destroy

    redirect_to tags_url, notice: "Tag deleted."
  end
end
