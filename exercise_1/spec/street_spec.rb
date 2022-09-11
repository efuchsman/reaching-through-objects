require 'rspec'
require './lib/room.rb'
require './lib/apartment.rb'
require './lib/building.rb'
require './lib/street.rb'

RSpec.describe do Street
  it 'exists' do
    adlington = Street.new("Adlington Road")

    expect(adlington).to be_an_instance_of(Street)
  end

  it "has a name" do
    adlington = Street.new("Adlington Road")

    expect(adlington.name).to eq("Adlington Road")
  end

    it "has buildings" do
      adlington = Street.new("Adlington Road")
      zebra = Building.new("123", "Zebra Apartments")
      savills = Building.new("623", "Savills Apartment Building")

      adlington.add_building(zebra)
      adlington.add_building(savills)

      expect(adlington.buildings).to eq(["Savills Apartment Building", "Zebra Apartments"])

    end

end
