class DockingStation

  attr_accessor :storage

  def initialize(storage=[])
    @storage = storage
  end


  def release
    @release_bike = storage.last
    storage.pop
    return @release_bike
  end

  def look
    puts "Storage:"
    print storage
  end


  def docking(bike)
    storage.push(bike)
  end

end

class Bike
  def working?
    return true
  end
end

dock = DockingStation.new

fast = Bike.new
faster = Bike.new
stop = Bike.new

dock.docking(fast)
dock.docking(faster)
dock.docking(stop)
dock.release()
dock.look()
