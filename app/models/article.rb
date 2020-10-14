class Article < ApplicationRecord
  belongs_to :author, class_name: :user
  belongs_to :category
  has_many :votes, dependent: :destroy

  validates :title, presence: true, allow_blank: false
  validates :title, length: {
    minimum: 6,
    maximum: 80,
    too_short: 'must have at least %<count> caracters',
    too_long: '%<count> characters is the maximum allowed'
  }
  validates :text, presence: true, allow_blank: false
  validates :text, length: {
    minimum: 10,
    too_short: 'must have at least %<count> words'
  }
  validates :category_id, presence: true
end
