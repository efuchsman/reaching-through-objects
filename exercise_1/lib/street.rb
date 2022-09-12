class Street
attr_reader :name, :buildings_array
  def initialize(name)
    @name = name
    @buildings_array = []
  end

  def add_building(bldg)
    @building = bldg
    @buildings_array << bldg
  end

  def buildings
    buildings_alphabetically = []

    @buildings_array.each do |bldg|
      bldg_name = bldg.building_name
      buildings_alphabetically << bldg_name
    end
      sorted =buildings_alphabetically.sort_by do |bldg_name|
        bldg_name.chars
      end
    sorted
  end

  def number_of_available_apartments
    array = []
      @buildings_array.each do |bldg|
        array << bldg.apartments

      end
        array = array.flatten
    #  require 'pry'; binding.pry
        selected = array.select do |apartment|
        apartment.is_rented? == false
        end
      selected.count
  end

  def list_available_apartments
   available = {}
    @buildings_array.each do |bldg|

        available[bldg.building_name] = []
        bldg.list_apartments.each do |apt|

          available[bldg.building_name] += [apt.list_rooms_by_name_alphabetically] if apt.is_rented? == false
        end
      end
      available
  end
end
