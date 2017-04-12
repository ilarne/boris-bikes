require 'boris_bike'

describe Bike do
    it { is_expected.to be_a Bike}
    it { is_expected.to respond_to(:working?)}
end
