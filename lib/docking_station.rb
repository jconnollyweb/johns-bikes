require_relative 'bike'

class DockingStation  # dockingstation class
  def release_bike   # inside the release_bike method we are returning a new instance of bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike
end
