# == Schema Information
#
# Table name: locations
#
#  id             :integer          not null, primary key
#  location_date  :date
#  arrival_time   :time
#  departure_time :time
#  address        :string(255)
#  latitude       :float
#  longitude      :float
#  truck_id       :integer
#  secret_code    :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'spec_helper'

describe 'Location' do
  describe '.new' do
    it 'creates a new instance of Location' do
      location = Location.create(location_date: '2013-01-20', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
      expect(location).to be_an_instance_of(Location)
    end

    it 'grabs a latitude and longitude from a new instance' do
      location = Location.create(location_date: '2013-01-20', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
      expect(location.latitude).to eq(40.7482845)
      expect(location.longitude).to eq(-73.9855692)
    end

    it 'generates a secret word no longer than 7 characters' do
      location = Location.create(location_date: '2013-01-20', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
      expect(location.secret_code).to_not be_nil
      expect(location.secret_code.length).to be < 7
    end

  end
end
