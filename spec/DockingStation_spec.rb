require 'DockingStation'
require 'Bikes'

describe DockingStation do

   #makes bike and allows it to access "working" variable 
  let(:bike) { double :bike, :working => true, working?: false }

  #releases a bike
  it { is_expected.to respond_to :release_bike }

  #only releases a working bike
  it 'releases a bike if working' do
    allow(bike).to receive(:working?).and_return(true)
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  #check method dock responds to 1 argument
  it { is_expected.to respond_to(:dock).with(1).argument }
  
  #docks a bike 
  it 'docks something' do
    expect(subject.dock(bike)).to eq [bike]
  end

  #raise error when at capacity
  it 'raises an error when docks full' do
			DockingStation::DEF_CAPACITY.times { subject.dock(bike) }
			expect { subject.full? }.to raise_error "Docking station full"
	end

  #releases bike and returns the same bike
  it 'releases a bike' do
    allow(bike).to receive(:working?).and_return(true)
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

    #raises error when dock is empty
  it 'raises an error when there are no bikes available' do
      expect { subject.empty? }.to raise_error "No bikes available."
  end

  it 'Allow user to set capacity of docking station' do
    # Create a new station with 50 bikes and test
    num = 50
    station = DockingStation.new(num)
    expect(station.capacity).to eq num

    # Create a default station using the DEFAULT_CAPACITY constant
    station = DockingStation.new
    expect(station.capacity).to eq DockingStation::DEF_CAPACITY
  end

end
  
