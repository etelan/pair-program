require 'boris_bike'

RSpec.describe Bike do
  describe '#Working' do
    it "returns true" do
      docking = DockingStation.new
      bike = docking.release_bike()
      actual_value = bike.working?
      expected_value = true

      expect(actual_value).to eq expected_value
    end
  end
end
