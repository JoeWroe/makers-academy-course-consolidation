require 'docking_station'

describe DockingStation do

  subject(:station) { described_class.new }
  let(:bike)        { Bike.new }

  describe '#release_bike' do

    it 'can release a bike' do
      station.dock(bike)
      expect(station.release_bike).to eq(bike)
      expect(bike.working?).to eq(true)
    end

    it 'raises an error if there are no bikes' do
      expect { station.release_bike }.to raise_error "Docking Station is empty."
    end
  end

  describe '#dock(bike)' do

    before(:each) do
      station.dock(bike)
    end

    it 'can dock a bike' do
      expect(station.bike).to eq(bike)
    end

    it 'raises an error if capacity reached' do
      expect { station.dock(bike) }.to raise_error "Docking Staion is full."
    end
  end
end
