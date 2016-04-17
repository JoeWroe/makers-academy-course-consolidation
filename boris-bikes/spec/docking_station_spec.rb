require 'docking_station'

describe DockingStation do

  it 'can release a bike' do
    station = DockingStation.new
    bike    = station.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'can dock a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
end
