require 'dishes'

describe Dishes do

  subject(:dishes) { described_class.new(dishes_list: list_of_dishes) }

  let(:list_of_dishes) { [
                            {starter: "Starter"},
                            {main: "Main"},
                            {dessert: "Dessert"}
                          ] }

  it 'has a list of dishes' do
    expect(dishes.dishes_list).to eq(list_of_dishes)
  end
end
