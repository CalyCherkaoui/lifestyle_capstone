class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category
  has_many :votes, dependent: :destroy
  has_one_attached :image

  validates_attachement_content_type :image, content_type: ['image/jpg', 'image/png', 'image/jpeg']

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

  scope :heros, -> { order(created_at: :asc).includes(:category, :author) }

  def votes_count
    votes.count
  end

end
