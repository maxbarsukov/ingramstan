class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def index
    @posts = Post.active
  end

  def profile
    @posts = @user.posts.active
  end

  private

  def set_user
    @user = User.find_by_username(params[:username])
  end
end
