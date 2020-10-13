require 'boris_bike'

RSpec.describe DockingStation do
  describe '#Docking' do
    it 'give it a bike, check if it has the bike' do

      penny_farthing = Bike.new
      station = DockingStation.new
      station.docking(penny_farthing)

      expected_value = penny_farthing
      actual_value = station.storage[0]

      expect(actual_value).to eq expected_value

    end
  end

  describe '#Release' do

    it 'release the last bike' do

      # New objects
      penny_farthing = Bike.new
      road_bike = Bike.new
      station = DockingStation.new

      # Dock Our Bikes
      station.docking(penny_farthing)
      station.docking(road_bike)

      expected_value = station.storage.last
      actual_value = station.release

      expect(actual_value).to eq expected_value

    end

    it 'return false if no bikes to give' do

      # New objects
      station = DockingStation.new

      expected_value = false
      actual_value = station.release

      expect(actual_value).to eq expected_value

    end
  end

end
