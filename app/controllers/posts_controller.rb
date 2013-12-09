class PostsController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new
    @post.user_id = params[:user_id]
    @post.published = params[:published]
    @post.published_on = params[:published_on]
    @post.post_text = params[:post_text]

    if @post.save
      redirect_to posts_url, notice: "Post created successfully."
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.user_id = params[:user_id]
    @post.published = params[:published]
    @post.published_on = params[:published_on]
    @post.post_text = params[:post_text]

    if @post.save
      redirect_to posts_url, notice: "Post updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to posts_url, notice: "Post deleted."
  end
end
