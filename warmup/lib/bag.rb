class Bag

  def initialize

  @candies = []
  @candy_count = 0
  end

  def count
    @candy_count
  end

  def empty?
    @candy_count == 0
  end

  def candies
    @candies
  end

  def add_candy(candy)
    @candy_count += 1
  @candies << candy
  end

  def contains?(type)
    @candies.any? do |candy|
       candy.type == type
      end
  end
end
