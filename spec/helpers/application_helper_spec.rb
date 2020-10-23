require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe '#flash_class_helper' do
    it 'returns the class corresponding to the flash type' do
      expect(flash_class_helper('notice')).to eq('success')
    end
  end

  describe '#flash_prefix_helper' do
    it 'returns the prefix corresponding to the flash type' do
      expect(flash_prefix_helper('notice')).to eq('Notice!')
    end
  end
end
