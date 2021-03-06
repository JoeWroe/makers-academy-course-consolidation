describe 'User Stories' do

  let(:customer)      { Customer.new(takeaway: takeaway) }
  let(:takeaway)      { Takeaway.new(menu: menu) }
  let(:menu)          { Menu.new(dishes: dishes, prices: prices, menuFormatter: menuFormatter) }
  let(:dishes)        { Dishes.new(dishes_list: list_of_dishes) }
  let(:prices)        { Prices.new(prices_list: list_of_prices) }
  let(:menuFormatter) { MenuFormatter.new }

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

  let(:menu_formatted) { "Starter..........3\nMain..........9\nDessert..........5" }

  describe 'User Story One' do
    it 'As a customer,
    So that I can check if I want to order something,
    I would like to see a list of dishes with prices.' do
      expect(customer.avaliable_dishes).to eq(menu_formatted)
    end
  end

  describe 'User Story Two' do
    # As a customer
    # So that I can order the meal I want
    # I would like to be able to select some number of several available dishes
  end

  describe 'User Story Three' do
    # # As a customer
    # # So that I can verify that my order is correct
    # I would like to check that the total I have been given matches the sum of the various dishes in my order
  end

  describe 'User Story Four' do
    # As a customer
    # So that I am reassured that my order will be delivered on time
    # I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
  end
end
