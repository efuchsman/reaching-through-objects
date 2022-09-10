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




end
