class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]

  def index
    # User dashboard - post feed
    @posts = Post.active
  end

  def profile
    # User profile
  end

  private

  def set_user
    @user = User.find_by_username(params[:username])
  end
end
