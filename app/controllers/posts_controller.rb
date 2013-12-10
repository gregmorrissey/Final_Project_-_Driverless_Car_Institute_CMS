class PostsController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    if current_user.author?
      render 'new'
    else
      redirect_to posts_url, notice: "You are not signed in as an author."
    end
  end

  def create
    @post = Post.new
    @post.user_id = current_user.id
    @post.published = params[:published]
    @post.published_on = params[:published_on]
    @post.post_text = params[:post_text]
    @post.title = params[:title]

    if @post.save
      redirect_to posts_url, notice: "Post created successfully."
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
    if current_user.admin? || current_user.id == @post.user_id
      @post = Post.find_by(id: params[:id])
    else
      redirect_to posts_url, notice: "You are not authorized to edit this post."  
    end
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.user_id = current_user.id
    @post.published = params[:published]
    @post.published_on = params[:published_on]
    @post.post_text = params[:post_text]
    @post.title = params[:title]

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
