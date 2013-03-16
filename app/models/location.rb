require 'random-word'
class Location < ActiveRecord::Base
  attr_accessible :location_date, :arrival_time, :departure_time, :address
  belongs_to :truck
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
