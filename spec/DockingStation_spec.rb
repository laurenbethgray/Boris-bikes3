require './lib/DockingStation.rb'
describe DockingStation do
  attr_reader :garage
  docking_station = DockingStation.new
  it 'releases working bikes' do
  bike = docking_station.release_bike
  expect(bike).to be_working
  end  
  it 'stores docked bikes in the garage' do
    returned_bike = Bikes.new
    # docking_station.dock(returned_bike)
    expect(docking_station.dock(returned_bike)).to eq [returned_bike]
  end
  it 'shows docked bikes' do
    # docking_station.lists_bikes
    expect(docking_station.lists_bikes).to be_truthy
  end
end