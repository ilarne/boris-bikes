
DEFAULT_CAPACITY = 20

class DockingStation

  attr_reader :bike_inventory

  def initialize
    @bike_inventory = []

  end

  def release_bike
    if self.empty? == true
      fail("this is our error for no bikes")
    else @bike_inventory.pop #maybe @bike? what's the diff at this point
    end
  end

  def dock(bike)
    if self.full? == true
      fail("the inventory is full with DEFAULT_CAPACITY bikes")
    else
      @bike_inventory << bike
    end
  end

#private
  def full?
    if @bike_inventory.length >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bike_inventory.length == 0
      true
    else
      false
    end
  end


end


class Bike
  def working?
    true
  end
end
