class DockingStation

  attr_writer :storage

  def initialize(storage=[])
    @storage = storage
  end


  def release
    @release_bike = storage.last
    if @storage.empty?
      raise "Asking for a bike that doesn't exist"
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
