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

end
