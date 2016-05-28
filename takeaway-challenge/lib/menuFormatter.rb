class MenuFormatter

  def initialize
    @menu = menu
  end

  def avaliable_dishes_list
    menu.avaliable_dishes
  end

  def formatted_menu
  end

  private

  attr_reader :menu

end
