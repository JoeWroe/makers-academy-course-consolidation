require_relative 'bike'

class DockingStation

  attr_reader :bikes

  bikes = @bikes

  def release_bike
    capacity_empty_error if empty?
    bikes
  end

  def dock(bike)
    capacity_full_error if full?
    @bikes = bike
  end

  private

  def capacity_empty_error
    raise "Docking Station is empty."
  end

  def capacity_full_error
    raise "Docking Staion is full."
  end

  def empty?
    bikes == nil
  end

  def full?
    bikes != nil
  end

end
