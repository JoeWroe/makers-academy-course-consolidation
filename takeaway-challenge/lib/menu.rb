class Menu

  def initialize(menuFormatter:)
    @menuFormatter = menuFormatter
  end

  def formatted_menu
    menuFormatter.formatted_menu
  end

  private

  attr_reader :menuFormatter

end
