class MenuFormatter

  def formatted_menu(menu)
    dish_and_price_array(menu).map do |menu_item|
      "#{menu_item[0]}..........#{menu_item[1]}"
    end.join("\n")
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

  def dish_and_price_array(menu)
    avaliable_dishes(menu).zip(prices_list(menu))
  end
end
