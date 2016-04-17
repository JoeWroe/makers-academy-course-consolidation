require_relative 'bike'

class DockingStation

  attr_reader :bike

  bike = @bike

  def release_bike
    raise "No bikes in Docking Station." unless bike
    bike
  end

  def dock(bike)
    @bike = bike
  end
end
