class DockingStation

  attr_writer :storage

  def initialize(storage=[], capacity=1)
    @storage = storage
    @capacity = capacity
  end


  def release
    @release_bike = storage.last
    raise "Asking for a bike that doesn't exist" if @storage.empty?
    storage.pop; return @release_bike if !(@storage.empty?)
  end

  def docking(bike)
    if storage.length < @capacity then storage.push(bike) else raise 'no space' end
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
