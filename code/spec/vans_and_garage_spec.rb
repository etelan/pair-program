require "vans_and_garage"

describe Van do

  describe "#drop_off" do
    it "returns the list of bikes" do
      # Make new objects
      van = Van.new([Bike.new, Bike.new, Bike.new])

      # Check values
      expected_value = van.bikes
      actual_value = van.drop_off
      expect(actual_value).to eq expected_value
    end
  end

end


describe Garage do

  describe "#fix" do
    it "fixes the bikes by changing working to true" do
      # Make new objects
      penny_farthing = Bike.new(false)
      delivery = [penny_farthing]
      garage = Garage.new(delivery)

      # Call methods
      garage.fix

      # Check values
      actual_value = garage.working[0].working
      expected_value = true
      expect(actual_value).to eq expected_value
    end
  end

  describe "#give_working" do
    it "returns the list of bikes" do
      # Make new objects
      penny_farthing = Bike.new(false)
      delivery = [penny_farthing]
      garage = Garage.new(delivery)

      # Do Methods
      garage.fix

      # Check values
      expected_value = garage.working
      actual_value = garage.give_working
      expect(actual_value).to eq expected_value
    end
  end


end
