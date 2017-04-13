require 'boris_bike'


describe DockingStation do
  it { is_expected.to be_a DockingStation}
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'returns error when the docking station has no bike' do
    expect{subject.release_bike}.to raise_error("this is our error for no bikes")
  end

  it 'returns error when the docking station accepts bike #20' do
    20.times { subject.dock(Bike.new) }
    expect{ subject.dock(Bike.new) }.to raise_error("the inventory is full with 20 bikes")
  end

  it "returns true if bike inventory is full" do
    20.times { subject.dock(Bike.new) }
    expect(subject.full?).to be true
  end

  it 'expects dock to keep bike' do
    subject.dock(Bike.new)
    expect(subject.bike_inventory).not_to be_nil
  end
end
