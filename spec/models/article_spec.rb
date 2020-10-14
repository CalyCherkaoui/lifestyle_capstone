require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should belong_to(:author).class_name('user')}
    it { should belong_to(:category)}
    it { should have_many(:votes)}
  end

  describe 'article.Title Attribute validations' do
    it { should validate_presence_of(:title)}
    it { should validate_length_of(:title).
      is_at_least(6).
      with_message("must have at least 10 characters")
    }
    it { should validate_length_of(:title).
        is_at_most(60).
        with_message("60 characters is the maximum allowed")
    }
  end

  describe 'article.Text Attribute validation' do
    it { should validate_presence_of(:text)}
    it { should validate_presence_of(:text)}
    it { should validate_length_of(:text).
                  is_at_least(10).
                  with_message("must have at least 10 characters")
    }
  end

  describe 'article.Category_id Attribute validation' do
    it { should validate_presence_of(:category_id)}
  end
end
