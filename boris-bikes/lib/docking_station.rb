require_relative 'bike'

class DockingStation

  attr_reader :bike

  bike = @bike

  def release_bike
    capacity_error if empty?
    bike
  end

  def dock(bike)
    capacity_error if full?
    @bike = bike
  end

  # private

  def capacity_error
    raise "Capacity error"
  end

  def empty?
    bike == nil
  end

  def full?
    bike != nil
  end

end
