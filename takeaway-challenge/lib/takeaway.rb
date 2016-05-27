class Takeaway

  def initialize(menu:)
    @menu = menu
  end

  def formatted_menu
    menu.formatted_menu
  end

  # def dishes
  #   menu.dishes_list
  # end
  #
  # def prices
  #   menu.prices_list
  # end

  private

  attr_reader :menu

end
