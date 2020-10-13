class DockingStation

  # Write Only for Storage
  attr_writer :storage

  # Initialize our instance variables
  def initialize(storage=[], capacity=1)
    @storage = storage
    @capacity = capacity
  end

  # Release and return the last bike, if there is one
  def release
    @release_bike = storage.last
    raise "Asking for a bike that doesn't exist" if empty?
    storage.pop; return @release_bike if !empty?
  end

  # Dock a bike into the station
  def docking(bike_collection)

    # If it is just a bike, no need to run through an array.
    if bike_collection.is_a?(Bike)
      if full? then storage.push(bike_collection) else raise 'no space' end

    # If array, loop through it and add
    elsif bike_collection.is_a?(Array)
      bike_collection.each do |bike|
        if full? then storage.push(bike) else raise 'no space' end
      end
    end

  end

  # Read Only for Storage
  attr_reader :storage

  # Viewing what is in storage
  def look
    puts "Storage:"
    print storage
  end

  # Refractoring
  private
  def full?
    return (if storage.length < @capacity then true else false end)
  end

  def empty?
    return (if storage.length == 0 then true else false end)
  end



end

# Class for Bike
class Bike
  # Determines if it is working or not
  def working?
    return true
  end
end
