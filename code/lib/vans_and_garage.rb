class Van
  attr_accessor :storage

  def initialize(storage = [])
    @storage = storage
  end

  def pick_up(station)
    @storage = station.broken
    station.broken = []
  end
end
