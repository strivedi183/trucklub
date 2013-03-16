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
#  secret_code    :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Location < ActiveRecord::Base
  attr_accessible :location_date, :arrival_time, :departure_time, :address


  before_save :geocode

  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end
