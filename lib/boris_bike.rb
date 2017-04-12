class DockingStation
  attr_reader :bike_count
  def initialize
    @bike_count = 10
  end

  def release_bike
    Bike.new
  end

  def dock
  end
end

class Bike
  def working?
    true
  end
end
