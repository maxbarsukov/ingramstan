class LikesController < ApplicationController
  before_action :authenticate_user!

  def save_like
    @like = Like.new(post_id: params[:post_id], user_id: current_user.id)
    @post_id = params[:post_id]
    existing_like = Like.where(post_id: params[:post_id], user_id: current_user.id)

    respond_to do |format|
      format.js do
        @success = if existing_like.any?
                     existing_like.first.destroy!
                     false
                   else
                     @like.save!
                   end

        @post_likes = Post.find(@post_id).total_likes_count
        render 'posts/like'
      end
    end
  end
end
