class Article < ApplicationRecord
  belongs_to :author, class_name: :user
  belongs_to :category
  has_many :votes, dependent: :destroy

  validates :title, presence: true, lenght: { maximum: 60 }
  validates :text, presence: true
  validates :category_id, presence: true
end
