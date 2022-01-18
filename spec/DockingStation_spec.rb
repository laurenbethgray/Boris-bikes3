require './lib/DockingStation.rb'
describe DockingStation do
  it 'releases bike' do
    docking_station = DockingStation.new
    docking_station.release_bike
  end
end