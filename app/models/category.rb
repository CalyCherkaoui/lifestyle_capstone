class Category < ApplicationRecord
  has_many :articles, -> { order(created_at: :desc) }
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :name, length: {
    minimum: 2,
    maximum: 20
    # too_short: "must have at least 2 words",
    # too_long: "20 characters is the maximum allowed"
  }
  validates :priority, presence: true, numericality: { only_integer: true, greater_than: 0 }

  scope :priority_sorted, -> { order(priority: :asc) }
  scope :importants, -> { priority_sorted.limit(4)}
  
  def cover_article
    self.articles.first
  end

  # category.cover_article the mosted voted recent arcticle
  # scope :most_voted, -> { with_votes.order(votes_count: :desc) }
  # scope :with_votes, -> { select('articles.*, COUNT(votes.user_id) as votes_count').left_joins(:votes).group(:id) }
  # scope :cover_article, -> { select('articles.*, ')  }
end
