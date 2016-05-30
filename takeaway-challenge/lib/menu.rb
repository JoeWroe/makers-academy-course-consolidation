class Menu

  def initialize(dishes:, prices:, menuFormatter:)
    @dishes = dishes
    @prices = prices
    @menuFormatter = menuFormatter
  end

  def avaliable_dishes
    dishes.dishes_list
  end

  def dish_prices
    prices.prices_list
  end

  def formatted_menu
    menuFormatter.formatted_menu(self)
  end

  private

  attr_reader :dishes, :prices, :menuFormatter

end
