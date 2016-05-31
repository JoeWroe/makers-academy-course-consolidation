class Takeaway

  def initialize(menu:)
    @menu = menu
  end

  def formatted_menu
    menu.formatted_menu
  end

  private

  attr_reader :menu

end
