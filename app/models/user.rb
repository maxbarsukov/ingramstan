class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  validates :username,
            presence: true,
            uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_followers
    Follower.where(following_id: id).count
  end

  def total_following
    Follower.where(follower_id: id).count
  end
end
