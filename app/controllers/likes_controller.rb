class LikesController < ApplicationController
  before_action :authenticate_user!

  def save_like
    @like = Like.new(post_id: params[:post_id], user_id: current_user.id)
    @post_id = params[:post_id]

    respond_to do |format|
      format.js {
        @success = @like.save

        render 'posts/like'
      }
    end
  end
end
