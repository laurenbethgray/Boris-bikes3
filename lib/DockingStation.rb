require_relative 'Bikes'

class DockingStation 
  
  DEF_CAPACITY = 20

  attr_reader :capacity
  attr_reader :docked

  def initialize(capacity = DEF_CAPACITY)
    @docked = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available.' if empty?
    @docked.pop
  end

  def dock(bike)
    fail 'Docking station full.' if full?
    @docked << bike
  end
  
  private
  
  def full?
    @docked.count >= capacity
  end

  def empty?
    @docked.empty?
  end
end
