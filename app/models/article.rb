class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :votes, dependent: :destroy

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
end
