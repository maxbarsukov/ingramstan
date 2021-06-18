class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  mount_uploader :image, ImageUploader

  default_scope { order created_at: :desc }
  validates :image, presence: true

  before_create :set_active

  scope :active, -> { where active: true }

  private

  def set_active
    self.active = true
  end
end
