require 'spec_helper'

describe 'Location' do
  describe '.new' do
    it 'creates a new instance of Location' do
      location = Location.create(location_date: '2013-01-20', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
      expect(location).to be_an_instance_of(Location)
    end
  end
end
