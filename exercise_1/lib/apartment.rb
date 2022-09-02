class Apartment
attr_reader :is_rented, :room_count, :rooms
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
    @room_count +=1
    @rooms << room


  end
end
