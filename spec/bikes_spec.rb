require './lib/Bikes.rb'
describe Bikes do
  it 'asks if bike is working' do
    bike = Bikes.new
    bike.working? 
  end
end