class DockingStation
  attr_reader :bike_inventory
  def initialize
    @bike_inventory = []
  end

  def release_bike
    if @bike_inventory == []
      fail("this is our error for no bikes")
    else @bike_inventory.pop #maybe @bike? what's the diff at this point
    end
  end

  def dock(bike)
    if @bike_inventory.length < 20
      @bike_inventory << bike
    else
      fail("the inventory is full with 20 bikes")
    end
  end
end

class Bike
  def working?
    true
  end
end
