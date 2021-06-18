class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates_uniqueness_of :post_id, scope: :user_id

  after_create :update_post_like_counter

  private

  def update_post_like_counter
    Post.find(self.post_id).increment
  end
end
