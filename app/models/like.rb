# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  post_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_uniqueness_of :post_id, scope: :user_id

  after_create :increase_post_like_counter
  after_destroy :decrease_post_like_counter

  private

  def increase_post_like_counter
    Post.find(self.post_id).increment(:total_likes_count).save
  end

  def decrease_post_like_counter
    Post.find(self.post_id).decrement(:total_likes_count).save
  end
end
