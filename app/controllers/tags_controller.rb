class TagsController < ApplicationController

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
    @tag.tag_subject = params[:tag_subject]

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
    @tag.tag_subject = params[:tag_subject]

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
