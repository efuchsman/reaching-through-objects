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

    it "lists number of avaible apartments" do
      adlington = Street.new("Adlington Road")
      zebra = Building.new("123", "Zebra Apartments")
      savills = Building.new("623", "Savills Apartment Building")
      bathroom = Room.new("bathroom")
      laundry = Room.new("laundry")
      kitchen = Room.new("kitchen")
      bedroom = Room.new("bedroom")
      apt_1 = Apartment.new

      apt_1.add_room(bedroom)
      apt_1.add_room(laundry)
      zebra.add_apartment(apt_1)
      adlington.add_building(zebra)

      expect(adlington.number_of_available_apartments).to eq(1)
    end

end
