class Apartment
attr_reader :is_rented
  def initialize
    @is_rented = false

  end

  def is_rented?
    @is_rented
  end

  def rent
    @is_rented = true
  end

end
