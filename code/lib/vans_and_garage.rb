require_relative "boris_bike"

class Van
  attr_accessor :bikes

  def initialize(bikes)
    @bikes = bikes
  end

  def drop_off
    @delivery = bikes
    @bikes = []
    return @delivery
  end
end

class Garage
  attr_accessor :broken, :working

  def initialize(delivery)
    @broken = delivery
    @working = []
  end

  def fix()
    @broken.each do |bike|
      bike.working = true
      @working.push(bike)
    end
    @broken = []
  end

  def give_working
    @transit = @working
    @working = []
    return @transit
  end
end
