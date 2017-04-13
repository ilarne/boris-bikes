class DockingStation
    attr_reader :bike

  def release_bike
    if @bike == nil
      fail("this is our error")
    end
  end

  def dock(bike)
    @bike = bike
  end

end

class Bike
  def working?
    true
  end
end
