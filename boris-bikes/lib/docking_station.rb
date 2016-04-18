require_relative 'bike'

class DockingStation

  attr_reader :bike

  bike = @bike

  def release_bike
    capacity_empty_error if empty?
    bike
  end

  def dock(bike)
    capacity_full_error if full?
    @bike = bike
  end

  private

  def capacity_empty_error
    raise "Docking Station is empty."
  end

  def capacity_full_error
    raise "Docking Staion is full."
  end

  def empty?
    bike == nil
  end

  def full?
    bike != nil
  end

end
