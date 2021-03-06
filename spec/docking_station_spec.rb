require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike } # one line syntax

  # it { is_expected.to respond_to(:dock).with(1).argument }


  describe '#release_bike' do # use # when describing method
    it 'releases a bike' do
      bike = Bike.new # method creating new bike instance
      subject.dock(bike) # release the bike we docked
      expect(subject.release_bike).to eq bike
    end

    describe '#release_bike' do
      it 'raises and error when no bikes are available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq @bikes
    end

    it { is_expected.to respond_to(:bike) }
  end

  describe '#dock' do
    it 'raises error when full' do
      DockingStation::DEFAULT_CAPACITY.times do   # :: we use as a namespace operator to access the DEFAULT_CAPACITY contant n the DockingStation class
        subject.dock Bike.new
      end
      expect {  subject.dock Bike.new }.to raise_error 'Docking station full'
    end 
    
    # it 'docks something' do
    #   bike = Bike.new        FIND OUT WHY I DID THIS LOOK THROUGH WALKTHROUGH
    #   subject.dock(bike)
    #   expect(subject.bike ).to eq @bikes 
    # end
  end 
end



# it 'releases working bikes' do
#   bike = subject.release_bike
#   expect(bike).to be_working
# end
