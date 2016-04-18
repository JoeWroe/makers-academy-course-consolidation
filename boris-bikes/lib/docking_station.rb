require_relative 'bike'

class DockingStation

  attr_reader :bike

  bike = @bike

  def release_bike
    capacity_error unless bike
    bike
  end

  def dock(bike)
    @bike = bike
  end

  private

  def capacity_error
    raise "Capacity error"
  end

end
