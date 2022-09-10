class Building
attr_reader :building_name, :building_number
  def initialize(building_number, building_name)
    @building_number = building_number
    @building_name =building_name
  end

end
