require 'menuFormatter'

describe MenuFormatter do

  subject(:menuFormatter) { described_class.new }

  # let(:menu) { double(:menu, avaliable_dishes: list_of_dishes) }
  #
  # let(:list_of_dishes)    { [
  #                           {starter: "Starter"},
  #                           {main: "Main"},
  #                           {dessert: "Dessert"}
  #                         ] }
  let(:menu_formatted) {
                         'Starter..........3
                          Main..........9
                          Desert..........5'
                        }

  describe 'formatted menu' do

    it 'can return it' do
      expect(menuFormatter.formatted_menu).to eq(menu_formatted)
    end
  end
end
