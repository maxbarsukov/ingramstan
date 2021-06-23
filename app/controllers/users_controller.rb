class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def index
    @posts = Post.active
    @comment = Comment.new

    following_ids = Follower.where(follower_id: current_user.id).map(&:following_id) << current_user.id
    @follower_suggestions = User.where.not(id: following_ids).last(5)
  end

  def profile
    @posts = @user.posts.active
  end

  def follow_user
    user_id = params[:follow_id]
    flash[:alert] = 'Unable to follow user' unless Follower.create(follower_id: current_user.id, following_id: user_id)

    redirect_to dashboard_path
  end

  private

  def set_user
    @user = User.find_by_username(params[:username])
  end
end
