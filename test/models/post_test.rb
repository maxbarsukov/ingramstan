# == Schema Information
#
# Table name: posts
#
#  id                   :bigint           not null, primary key
#  user_id              :bigint
#  image                :string
#  active               :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  description          :text
#  total_likes_count    :integer          default(0)
#  total_comments_count :integer          default(0)
#
require "test_helper"

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
