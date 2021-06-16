class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # User dashboard - post feed
    @posts = Post.active
  end

  def show
    # User profile
  end
end
