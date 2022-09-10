require 'rspec'
require './lib/room.rb'

RSpec.describe Room do
  it 'has a room name' do
    bathroom = Room.new('bathroom')

    expect(bathroom.name).to eq('bathroom')
  end
end
