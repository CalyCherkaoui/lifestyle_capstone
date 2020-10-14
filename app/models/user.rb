class User < ApplicationRecord
  has_many :articles
  has_many :votes, dependent: :destroy

  validates :name, uniqueness: { case_sensitive: false}, presence: true, lenght: {minimum: 6}

end
