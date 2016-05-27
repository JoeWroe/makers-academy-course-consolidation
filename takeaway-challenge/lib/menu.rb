class Menu

  def initialize(dishes:, menuFormatter:)
    @dishes = dishes
    @menuFormatter = menuFormatter
  end

  def avaliable_dishes
    dishes.dishes_list
  end

  def formatted_menu
    menuFormatter.formatted_menu
  end

  private

  attr_reader :dishes, :menuFormatter

end
