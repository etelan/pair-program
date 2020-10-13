class DockingStation

  attr_writer :storage

  def initialize(storage=[])
    @storage = storage
  end


  def release
    @release_bike = storage.last
    if @storage.empty?
      puts "no bikes available"
      return false
    else
      storage.pop
      return @release_bike
    end
  end

  def docking(bike)
    storage.push(bike)
  end

  attr_reader :storage

  def look
    puts "Storage:"
    print storage
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
dock.release()
dock.release()
dock.release()
dock.release()
dock.release()
dock.look()
