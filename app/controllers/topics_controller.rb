class TopicsController < ApplicationController
before_filter :authenticate_user!

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.where(post_id: params[:post_id]).where(tag_id: params[:tag_id])
    @post_id = @topic.find_by(post_id: params[:post_id])
    @tag_id = @topic.find_by(tag_id: params[:tag_id])
  end

  def new
    if current_user.admin?
      render 'new'
    else
      redirect_to home_url, notice: "You are not signed in as an administrator."
    end
  end

  def create
    @topic = Topic.new
    @topic.post_id = params[:post_id]
    @topic.tag_id = params[:tag_id]

    if @topic.save
      redirect_to topics_url, notice: "Topic created successfully."
    else
      render 'new'
    end
  end
  
#  def edit
#      @topic = Topic.where(post_id: params[:post_id]).where(tag_id: params[:tag_id])
#    if current_user.admin?
#      @topic = @topic[0]
#      @post_id = @topic.post_id
#      @tag_id = @topic.tag_id
#    else
#      redirect_to home_url, notice: "You are not signed in as an administrator."  
#    end
#  end
#  
#  def update
#    @topic = Topic.where(post_id: params[:post_id]).where(tag_id: params[:tag_id])
#    @topic.delete_all
#    @topic = Topic.new
#    @topic.post_id = params[:post_id]
#    @topic.tag_id = params[:tag_id]
#
#    if @topic.update_all('post_id = @topic.post_id')
#      redirect_to topics_url, notice: "Topic updated successfully."
#    else
#      render 'edit'
#    end
#  end

  def delete
    @topic = Topic.where(post_id: params[:post_id]).where(tag_id: params[:tag_id])
    @topic.delete_all

    redirect_to topics_url, notice: "Topic deleted."
  end
end
