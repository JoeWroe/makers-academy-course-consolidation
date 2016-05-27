require 'menu'

describe Menu do

  subject(:menu) { described_class.new(menuFormatter: menuFormatter) }

  let(:menuFormatter) { double(:menuFormatter, formatted_menu: menu_formatted) }

  let(:menu_formatted) { 'Starter..........3' }

  describe 'formatted menu' do

    it 'can return it' do
      expect(menu.formatted_menu).to eq(menu_formatted)
    end
  end

end
