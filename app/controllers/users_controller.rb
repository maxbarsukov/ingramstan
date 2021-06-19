class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def index
    @posts = Post.active
    @comment = Comment.new

    following_ids = Follower.where(follower_id: current_user.id).map(&:following_id) << current_user.id
    @follower_suggestions = User.where.not(id: following_ids).last(3)
  end

  def profile
    @posts = @user.posts.active
  end

  def follow_user
    user_id = params[:follow_id]
    if Follower.create(follower_id: current_user.id, following_id: user_id)
      flash[:success] = 'Now following user'
    else
      flash[:danger] = 'Unable to follow user'
    end

    redirect_to dashboard_path
  end

  private

  def set_user
    @user = User.find_by_username(params[:username])
  end
end
