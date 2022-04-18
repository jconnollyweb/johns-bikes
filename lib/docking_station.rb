require_relative 'bike'

class DockingStation  # dockingstation class
  def initialize
    @bikes = []
  end 

  def release_bike   # inside the release_bike method we are returning a new instance of bike
    fail 'No bikes available' if @bikes.empty?  #fails unless there is bike to  release
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= 20 #fails if there is more than 20 bikes in docking station
    @bikes << bike
  end

  attr_reader :bike
end
