require_relative 'vans_and_garage'

class DockingStation

  # Write Only for Storage
  attr_accessor :storage, :broken

  # Initialize our instance variables
  def initialize(capacity=1)
    @storage = []
    @broken = []
    @DEFAULT_CAPACITY = capacity
  end

  # Release and return the last bike, if there is one
  def release
    raise "Asking for a bike that doesn't exist" if empty?
    return storage.pop if !empty?
  end

  # Dock a bike into the station
  def docking(bike_collection, work = true)

    # If it is just a bike, no need to run through an array.
    if bike_collection.is_a?(Bike)
      if work then push_bike(storage, bike_collection) end
      if !work then push_bike(broken, bike_collection) end

    # If array, loop through it and add
    ## Are you assuming they are all working because they're from the garage?
    elsif bike_collection.is_a?(Array)
      bike_collection.each do |bike|
        if full? then storage.push(bike) else raise 'no space' end
      end
    end

  end

  def give_broken
    @transit = broken
    @broken = []
    return @transit
  end


  # Refractor
  def push_bike(storage, bike_collection)
    if full? then storage.push(bike_collection) else raise 'no space' end
  end

  # Checks if we have capacity for a broken or not bike.
  private
  def full?
    return (if storage.length + @broken.length < @DEFAULT_CAPACITY then true else false end)
  end

  # Checks if our working bike bay is empty
  def empty?
    return (if storage.length == 0 then true else false end)
  end







end

# Class for Bike
class Bike
  attr_accessor :working

  def initialize(working = true)
    @working = working
  end


end
