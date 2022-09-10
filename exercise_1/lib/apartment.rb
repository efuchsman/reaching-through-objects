class Apartment
attr_reader :is_rented, :rooms, :room_count
  def initialize
    @is_rented = false
    @room_count = 0
    @rooms = []
  end

  def is_rented?
    @is_rented
  end

  def rent
    @is_rented = true
  end

  def add_room(room)
    @room = room
    @room_count +=1
    @rooms << room
  end

  def list_rooms_by_name_alphabetically
    room_names = []
    @rooms.each do |room|
      room_names << room.name
    end
    sorted = room_names.sort_by do |room_name|
      room_name.chars
    end
    sorted
  end
end
