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



end
