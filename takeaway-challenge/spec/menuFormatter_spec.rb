require 'menuFormatter'

describe MenuFormatter do

  subject(:menuFormatter) { described_class.new }

  let(:menu) { double(:menu, avaliable_dishes: list_of_dishes, dish_prices: list_of_prices) }

  let(:list_of_dishes) { [
                           {starter: "Starter"},
                           {main: "Main"},
                           {dessert: "Dessert"}
                          ] }
  let(:list_of_prices) { [
                           {'Starter': 3},
                           {'Main': 9},
                           {'Dessert': 5}
                          ] }

  let(:menu_formatted) { "Starter..........3\nMain..........9\nDesert..........5" }

  describe 'formatted menu' do

    it 'can return it' do
      expect(menuFormatter.formatted_menu(menu)).to eq(menu_formatted)
    end
  end
end
