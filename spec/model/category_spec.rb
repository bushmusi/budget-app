require 'rails_helper'
require 'spec_helper'

RSpec.describe Category, type: :model do
  describe 'Check relation of food models' do
    it { should belong_to :user }
    it { should have_many :category_payments }
  end

  describe 'field validation' do
    it { should validate_presence_of :name }
  end
end
