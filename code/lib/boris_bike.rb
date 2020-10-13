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

  def docking(bike_collection)

    # If it is just a bike, no need to run through an array.
    if bike_collection.is_a?(Bike)
      if storage.length < @capacity then storage.push(bike_collection) else raise 'no space' end

    # If array, loop through it and add
    elsif bike_collection.is_a?(Array)
      bike_collection.each do |bike|
        if storage.length < @capacity then storage.push(bike) else raise 'no space' end
      end
    end

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
