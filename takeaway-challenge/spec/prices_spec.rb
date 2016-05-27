require 'prices'

describe Prices do

  subject(:prices) { described_class.new(prices_list: list_of_prices) }

  let(:list_of_prices) { [
                            {'Starter': 3},
                            {'Main': 9},
                            {'Dessert': 5}
                          ] }

  it 'has a list of prices' do
    expect(prices.prices_list).to eq(list_of_prices)
  end

end
