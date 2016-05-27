require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes: dishes, menuFormatter: menuFormatter) }

  let(:dishes)        { double(:dishes, dishes_list: dishes_list) }
  let(:menuFormatter) { double(:menuFormatter, formatted_menu: menu_formatted) }

  let(:dishes_list)    { ['Starter', 'Main', 'Dessert']}
  let(:menu_formatted) { 'Starter..........3' }

  describe 'dishes' do

    it 'can be listed' do
      expect(menu.avaliable_dishes).to eq(dishes_list)
    end
  end

  describe 'formatted menu' do

    it 'can return it' do
      expect(menu.formatted_menu).to eq(menu_formatted)
    end
  end
end
