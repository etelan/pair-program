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

    it 'max capacity error' do

      # New objects
      station = DockingStation.new([],0)

      expect{station.docking(Bike.new)}.to raise_error("no space")

    end

    it 'adding with array' do

      station = DockingStation.new([],20)
      bundle_bikes = [Bike.new, Bike.new]
      station.docking(bundle_bikes)

      expected_value = bundle_bikes
      actual_value = station.storage
      expect(actual_value).to eq expected_value

    end

  end

  describe '#Release' do

    it 'release the last bike' do

      # New objects
      penny_farthing = Bike.new
      road_bike = Bike.new
      station = DockingStation.new([],2)

      # Dock Our Bikes
      station.docking(penny_farthing)
      station.docking(road_bike)

      expected_value = station.storage.last
      actual_value = station.release

      expect(actual_value).to eq expected_value

    end

    it 'raise no bikes if no bikes to give' do

      # New objects
      station = DockingStation.new

      expect{station.release}.to raise_error("Asking for a bike that doesn't exist")

    end




  end

end
