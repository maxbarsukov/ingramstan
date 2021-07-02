class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:profile]
  after_action :update_presence, only: [:profile]

  def index
    followings_ids = Follower.where(follower_id: current_user.id).map(&:following_id)
    followings_ids << current_user.id

    @posts = Post.paginate(page: params[:page], per_page: 5)
                 .order(created_at: :desc)
                 .includes(:user)
                 .where(user_id: followings_ids)
                 .active

    @comment = Comment.new

    @follower_suggestions = User.where.not(id: followings_ids).limit(100).sample(5)

    respond_to do |format|
      format.html
      format.js
    end
  end

  def profile
    @posts = @user.posts.active
  end

  def update_presence
    current_user.update_attribute(:last_seen, DateTime.now) if current_user
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
