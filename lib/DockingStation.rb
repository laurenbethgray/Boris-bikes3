require_relative 'Bikes'

class DockingStation 
  attr_reader :garage

  def initialize
    @garage = [] 

  end 

  def release_bike
    Bikes.new 
  end

  def dock(bike)
  @garage << bike
  end

  def lists_bikes
    bikes_available = @garage.count
    p "There are #{bikes_available} bikes available"
  end
end

# hey = DockingStation.new
# bike = Bikes.new
# hey.dock(bike)
# hey.lists_bikes
