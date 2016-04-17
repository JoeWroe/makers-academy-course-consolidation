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
      expect { station.release_bike }.to raise_error "No bikes in Docking Station."
    end

  end

  describe '#dock(bike)' do

    it 'can dock a bike' do
      station.dock(bike)
      expect(station.bike).to eq(bike)
    end

  end
end
