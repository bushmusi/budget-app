require 'rails_helper'
require 'spec_helper'

RSpec.describe CategoryPayment, type: :model do
  describe 'Check relation of food models' do
    it { should belong_to :payment }
    it { should belong_to :category }
  end
end
