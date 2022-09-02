require 'rspec'
require './lib/room.rb'

RSpec.describe Room do
  it 'has a room name' do
    room = Room.new('bathroom')

    expect(room.name).to eq('bathroom')
  end
end
