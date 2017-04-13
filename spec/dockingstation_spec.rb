require 'boris_bike'

describe DockingStation do
  it { is_expected.to be_a DockingStation}
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns error when the docking station has no bike' do
    expect{subject.release_bike}.to raise_error("this is our error")
  end

  it 'expects dock to keep bike' do
    subject.dock(Bike.new)
    expect(subject.bike).not_to be_nil
  end

it 'expects bike' do
bike = Bike.new
  expect(subject.dock(bike)).to eq bike
end


end
