require 'customer'

describe Customer do

  subject(:customer) { described_class.new(takeaway: takeaway) }

  let(:takeaway) { double(:takeaway, formatted_menu: formatted_menu) }

  let(:formatted_menu) { 'Starter..........3' }

  describe 'viewing menu' do

    it 'can view menu items' do
      expect(customer.avaliable_dishes).to eq('Starter..........3')
    end
  end
end
