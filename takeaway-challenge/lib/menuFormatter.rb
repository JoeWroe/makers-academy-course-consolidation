class MenuFormatter

  def formatted_menu(menu)
    "#{avaliable_dishes(menu)}.........."
  end

  # private

  def avaliable_dishes(menu)
    menu.avaliable_dishes.map { |dish|
      dish.map do |type, name|
        "#{type.to_s.capitalize}: #{name}"
      end
     }
  end
end
