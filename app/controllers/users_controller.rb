class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def index
    @posts = Post.active
    @follower_suggestions = User.where.not(id: current_user.id).last(3)
  end

  def profile
    @posts = @user.posts.active
  end

  def follow_user
    user_id = params[:follow_id]
    Follower.create(follower_id: current_user.id, following_id: user_id)
  end

  private

  def set_user
    @user = User.find_by_username(params[:username])
  end
end
