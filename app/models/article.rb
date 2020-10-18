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

  scope :heros, -> { order(created_at: :desc).includes(:author)}
  scope :ordred_by_votes, -> { order(votes_count: :desc).includes(:category)}

  def votes_count
    votes.count
  end

  def cover_image
    return self.image.variant(resize: '100x100')
  end

  def hero_image
    return self.image.variant(resize: '300x300')
  end

  private

  def add_default_image
    self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", "default_article.jpg")), filename: 'default_article.jpg', content_type: 'image/jpg')
  end

end
