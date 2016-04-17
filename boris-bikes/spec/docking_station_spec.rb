require 'docking_station'

describe DockingStation do

  it 'can release a bike' do
    station = DockingStation.new
    bike    = Bike.new
    station.dock(bike)
    expect(station.release_bike).to eq(bike)
    expect(bike.working?).to eq(true)
  end

  it 'can dock a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end

  it 'raises an error if there are no bikes' do
    station = DockingStation.new
    expect { subject.release_bike }.to raise_error("No bikes in Docking Station.")
  end
end
