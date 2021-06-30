# == Schema Information
#
# Table name: followers
#
#  id           :bigint           not null, primary key
#  follower_id  :bigint
#  following_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Follower < ApplicationRecord
  validates_uniqueness_of :follower_id, scope: :following_id
end
