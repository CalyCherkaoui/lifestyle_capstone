class User < ApplicationRecord
  has_many :articles, foreign_key: :author_id, class_name: 'Article'
  has_many :votes, dependent: :destroy
  has_many :liked_articles, through: :votes, source: :article

  validates :name, uniqueness: { case_sensitive: false }, presence: true
  validates :name, length: {
    minimum: 3
  }
end
