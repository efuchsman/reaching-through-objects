require 'rspec'
require './lib/room.rb'
require './lib/apartment.rb'

RSpec.describe Apartment do
  it 'exists' do
    apartment = Apartment.new
    expect(apartment).to be_an_instance_of Apartment
  end

  it 'has readable attributes is_rented by default' do
    apartment = Apartment.new

    expect(apartment.is_rented).to be false

  end

  it 'can be rented' do
    apartment = Apartment.new
    apartment.rent

    expect(apartment.is_rented?).to be true
  end

  it "can have up to 4 rooms" do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")

    apartment.add_room(bathroom)

    expect(apartment.add_room(bathroom).first).to be bathroom

  end

end

