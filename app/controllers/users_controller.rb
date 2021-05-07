class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # User feed
  end

  def show
    # User profile
  end
end
