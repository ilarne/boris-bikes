require 'boris_bike'

describe DockingStation do
  it { is_expected.to be_a DockingStation}
  it { is_expected.to respond_to(:release_bike)}
end
