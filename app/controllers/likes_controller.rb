class LikesController < ApplicationController
  def save_like
    @like = Like.new(post_id: params[:post_id], user_id: current_user.id)
    if @like.save
    else
    end
  end
end
