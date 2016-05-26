class Takeaway

  def initialize(menu:)
    @menu = menu
  end

  def formatted_menu
    # To be replaced with string interpolation when dishes and prices have been done.
    'Starter..........3'
  end

  def dishes
    menu.dishes_list
  end

  def prices
    menu.prices_list
  end

  private

  attr_reader :menu

end
