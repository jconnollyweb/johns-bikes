require_relative 'bike'

class DockingStation  # dockingstation class
  DEFAULT_CAPACITY = 20 #DEFAULT_CAPACITY is set to 20 so i can replace 20 in the code with DEFAULT CAPACITY 
  def initialize
    @bikes = []
  end 

  def release_bike   # inside the release_bike method we are returning a new instance of bike
    fail 'No bikes available' if empty?  #fails unless there is bike to  release
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if capacity  #fails if there is more than 20 bikes in docking station
    @bikes << bike
  end

  attr_reader :bike 
  attr_reader :capacity

  private

  def capacity
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end 
end
