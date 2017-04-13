require 'boris_bike'

describe DockingStation do
  it { is_expected.to be_a DockingStation}
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it {is_expected.to respond_to(:bike) }

it 'expects bike' do
bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end

describe DockingStation.new.release_bike do
  it { is_expected.to be_a Bike}

  end
end
