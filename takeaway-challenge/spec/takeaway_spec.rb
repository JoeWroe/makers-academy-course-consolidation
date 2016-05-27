require 'takeaway'

describe Takeaway do

  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, formatted_menu: arranged_menu)}

  # let(:menu) { double(:menu, dishes_list: dishes_list,
  #                            prices_list: prices_list
  #                     ) }
  #
  # let(:dishes_list)   { { starter: "A dish that comes first" } }
  # let(:prices_list)   { { starter: 3 } }
  let(:arranged_menu) { 'Starter..........3' }

  describe 'returning a formatted menu' do

    # it 'can obtain a formatted_menu' do
    #   expect(takeaway.dishes).to eq(dishes_list)
    # end

    # it 'can obtain a list of prices' do
    #   expect(takeaway.prices).to eq(prices_list)
    # end

    it 'can return a menu' do
      expect(takeaway.formatted_menu).to eq(arranged_menu)
    end
  end
end
