require_relative 'bike'

class DockingStation

  attr_reader :bike

  bike = @bike

  def release_bike
    if @bike == nil
      raise "No bikes in Docking Station."
    else
      bike
    end
  end

  def dock(bike)
    @bike = bike
  end
end
