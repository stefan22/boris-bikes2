feature 'member of public accesses bike' do

  let(:docking_station) { DockingStation.new }

  scenario 'docking station releases a working bike' do
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  scenario 'docking station does not release a bike when there are none available' do
    expect { docking_station.release_bike }.to raise_error 'No bikes available'
  end

  # scenario 'docking station does not release broken bikes' do
  #   bike = Bike.new
  #   bike.report_broken
  #   docking_station.dock bike
  #   expect { docking_station.release_bike }.to raise_error 'No bikes available'
  # end

end
