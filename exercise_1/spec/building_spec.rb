require 'rspec'
require './lib/room.rb'
require './lib/apartment.rb'
require './lib/building.rb'

RSpec.describe Building do
  it 'exists' do
    bldg = Building.new("623", "Savills Apartment Building")
    expect(bldg).to be_an_instance_of Building
  end

  it 'has readable attributes is_rented by default' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg.building_number).to eq("623")
    expect(bldg.building_name).to eq("Savills Apartment Building")
  end

  it 'can have up to 4 apartments' do
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_5 = Apartment.new

    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_5)

      expect(bldg.list_apartments).to eq ([apt_1, apt_2, apt_5])
  end


end
