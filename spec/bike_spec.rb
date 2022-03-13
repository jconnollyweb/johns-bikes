require 'bike'

describe Bike do #refers explicity to bike class
  it { is_expected.to respond_to :working? } #expects instance of bike class to be working?
end
# it 'returns docked bikes' do
#     bike = Bike.new
#     subject.dock(bike)
#     expect(subject.bike).to eq bike
#   end
