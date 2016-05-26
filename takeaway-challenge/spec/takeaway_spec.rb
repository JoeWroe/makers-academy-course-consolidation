require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, dishes_list: dishes_list) }

  let(:dishes_list)   { 'starter' }
  let(:arranged_menu) { 'Starter..........3' }

  describe 'returning a formatted menu' do

    it 'can obtain a list of dishes' do
      expect(takeaway.dishes).to eq(dishes_list)
    end

    xit 'can obtain a list of prices' do

    end

    it 'can return a menu' do
      expect(takeaway.formatted_menu).to eq(arranged_menu)
    end
  end
end
