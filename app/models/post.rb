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
class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader

  default_scope { order created_at: :desc }

  validates :image, presence: true
  validates :image, file_size: { less_than: 10.megabytes }

  before_create :set_active

  scope :active, -> { where active: true }

  def last_comments(n)
    comments.includes([:user]).order(created_at: :asc).last(n)
  end

  private

  def set_active
    self.active = true
  end
end
