class Category < ApplicationRecord
  has_many :articles
  validates :name, presence: true, uniqueness: true, case_sensitive: false
  validates :priority, presence: true, numiracality: { greater_than: 0 }
end
