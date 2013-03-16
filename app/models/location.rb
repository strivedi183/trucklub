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

require 'random-word'
class Location < ActiveRecord::Base
  attr_accessible :location_date, :arrival_time, :departure_time, :address


  before_save :geocode, :generate_secret

  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end

  def generate_secret
    RandomWord.exclude_list << /_/
    self.secret_code = RandomWord.nouns.first
  end


end
