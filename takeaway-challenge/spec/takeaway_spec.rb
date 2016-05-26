require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new }

  let(:arranged_menu) { 'Starter..........3' }

  describe 'returning a formatted menu' do

    xit 'can obtain a list of dishes' do

    end

    xit 'can obtain a list of prices' do

    end

    it 'can return a menu' do
      expect(takeaway.formatted_menu).to eq(arranged_menu)
    end
  end
end
