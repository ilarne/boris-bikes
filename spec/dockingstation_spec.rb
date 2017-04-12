require 'boris_bike'

describe DockingStation do
  it { is_expected.to be_a DockingStation}
  it { is_expected.to respond_to(:release_bike)}
  it { is_expected.to respond_to(:dock)}
end

describe DockingStation.new.release_bike do
  it { is_expected.to be_a Bike}

  it 'releasing bike raises an error' do
    expect {(:release_bike)}.to raise_error
  end
end
