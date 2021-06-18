class LikesController < ApplicationController
  before_action :authenticate_user!

  def save_like
    @like = Like.new(post_id: params[:post_id], user_id: current_user.id)

    respond_to do |format|
      format.json {
        if @like.save
          { success: true }
        else
          { success: false }
        end
      }
    end
  end
end
