require 'menuFormatter'

describe MenuFormatter do

  subject(:menuFormatter) { described_class.new }

  # let(:menu) { double(:menu, avaliable_dishes: dishes_list) }
  #
  # let(:dishes_list)    { [
  #                           {starter: "Starter"},
  #                           {main: "Main"},
  #                           {dessert: "Dessert"}
  #                         ] }

  describe 'menu contents' do

    it 'can obtain a list of dishes' do
      expect(menuFormatter.avaliable_dishes_list).to eq(list_of_dishes)
    end
  end

  xdescribe 'formatted menu' do

    it 'can return it' do
      expect(menuFormatter.formatted_menu).to eq(menu_formatted)
    end
  end
end
