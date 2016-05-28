require 'menu'

describe Menu do

  subject(:menu) { described_class.new(
                                        dishes: dishes,
                                        prices: prices,
                                        menuFormatter: menuFormatter
                                        ) }

  let(:dishes)        { double(:dishes, dishes_list: dishes_list) }
  let(:prices)        { double(:prices, prices_list: prices_list) }
  let(:menuFormatter) { double(:menuFormatter, formatted_menu: menu_formatted) }

  let(:dishes_list)    { [
                            {starter: "Starter"},
                            {main: "Main"},
                            {dessert: "Dessert"}
                          ] }
  let(:prices_list)    { [
                            {'Starter': 3},
                            {'Main': 9},
                            {'Dessert': 5}
                          ] }
  let(:menu_formatted) {
                          'Starter..........3'
                          'Main..........9'
                          'Dessert..........5'
                        }

  describe 'dishes' do

    it 'can be listed' do
      expect(menu.avaliable_dishes).to eq(dishes_list)
    end
  end

  describe 'prices' do

    it 'can be listed' do
      expect(menu.dish_prices).to eq(prices_list)
    end
  end

  describe 'formatted menu' do

    it 'can return it' do
      expect(menu.formatted_menu).to eq(menu_formatted)
    end
  end
end
