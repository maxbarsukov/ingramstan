class PostsController < ApplicationController
  before_action :set_entry, only: %i[show edit]

  def index
    @posts = Post.order('created_at DESC')
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to dashboard_path, flash: { success: "Post was created successfully!" }
    else
      render new, flash: { danger: "Post was created successfully!" }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:image, :image_cache)
  end
end