require 'menuFormatter'

describe MenuFormatter do

  subject(:menuFormatter) { described_class.new }

  let(:menu_formatted) { 'Starter..........3'}

  xdescribe 'formatted menu' do

    it 'can return it' do
      expect(menuFormatter.formatted_menu).to eq(menu_formatted)
    end
  end
end
