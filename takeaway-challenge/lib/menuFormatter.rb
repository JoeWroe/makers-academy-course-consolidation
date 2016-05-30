class MenuFormatter

  def formatted_menu(menu)
    avaliable_dishes(menu)
    prices_list(menu)
  end

  private

  def avaliable_dishes(menu)
    menu.avaliable_dishes.map do |dish|
      dish.map do |type, name|
        name
      end.join(", ")
    end
  end

  def prices_list(menu)
    menu.dish_prices.map do |price|
      price.map do |name, price|
        price
      end.join(", ")
    end
  end
end
