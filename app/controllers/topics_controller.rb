class TopicsController < ApplicationController
before_filter :authenticate_user!

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find_by(id: params[:id])
  end

  def new
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

  def edit
    @topic = Topic.find_by(id: params[:id])
  end

  def update
    @topic = Topic.find_by(id: params[:id])
    @topic.post_id = params[:post_id]
    @topic.tag_id = params[:tag_id]

    if @topic.save
      redirect_to topics_url, notice: "Topic updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @topic = Topic.find_by(id: params[:id])
    @topic.destroy

    redirect_to topics_url, notice: "Topic deleted."
  end
end
