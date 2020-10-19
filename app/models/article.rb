class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  has_many :votes, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true
  validates :title, length: {
    minimum: 6,
    maximum: 80
    # too_short: "must have at least 6 characters",
    # too_long: "80 characters is the maximum allowed"
  }

  validates :text, presence: true
  validates :text, length: {
    minimum: 10
    # too_short: "must have at least 10 words"
  }
  validates :category_id, presence: true
  validates :image, presence: true

  scope :heros, -> { order(created_at: :desc).includes(:author) }
  scope :ordred_by_votes, -> { order(votes_count: :desc).includes(:category) }
  scope :with_attached_image, -> { includes(image_attachment: :blob) }

  def votes_count
    votes.count
  end

  def cover_image
    image.variant(resize: '200x200')
  end

  def hero_image
    image.variant(resize: '300x300')
  end

  def display_image
    image.variant(resize: '1000x1000')
  end
end
