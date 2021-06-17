class Post < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :image, presence: true

  before_create :set_active

  scope :active, -> { where active: true }

  def total_likes
    0
  end

  private

  def set_active
    self.active = true
  end
end
