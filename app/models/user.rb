class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]

  mount_uploader :image, AvatarUploader

  validates :username,
            presence: true,
            uniqueness: true,
            format: { with: /\A[a-zA-Z0-9_]*\z/i },
            length: { maximum: 30 }

  validates :first_name,
            length: { maximum: 30 }

  validates :last_name,
            length: { maximum: 30 }

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

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.first_name = auth.info.name
      user.image = auth.info.image
      user.username = auth.info.name.gsub(' ', '')
    end
  end
end
