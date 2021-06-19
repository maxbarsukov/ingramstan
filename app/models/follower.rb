class Follower < ApplicationRecord
  validates_uniqueness_of :follower_id, scope: :following_id
end
