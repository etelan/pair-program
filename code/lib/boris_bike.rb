class DockingStation
  def release_bike
    puts "released the bike"
    return Bike.new
  end
end

class Bike
  def working?
    return true
  end
end
