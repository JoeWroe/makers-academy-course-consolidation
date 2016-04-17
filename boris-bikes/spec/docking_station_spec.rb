require 'docking_station'

describe DockingStation do

  it 'can release a bike' do
    station = DockingStation.new
    bike    = station.release_bike
    expect(bike.working?).to eq(true)
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it {is_expected.to respond_to(:bike)}

end
