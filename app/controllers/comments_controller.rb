class CommentsController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def new
  end

  def create
    @comment = Comment.new
    @comment.user_id = params[:user_id]
    @comment.post_id = params[:post_id]
    @comment.commented_on = params[:commented_on]

    if @comment.save
      redirect_to comments_url, notice: "Comment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.user_id = params[:user_id]
    @comment.post_id = params[:post_id]
    @comment.commented_on = params[:commented_on]

    if @comment.save
      redirect_to comments_url, notice: "Comment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy

    redirect_to comments_url, notice: "Comment deleted."
  end
end
