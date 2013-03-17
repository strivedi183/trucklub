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

require 'random-word'
class Location < ActiveRecord::Base
  attr_accessible :location_date, :arrival_time, :departure_time, :address
  belongs_to :truck, :inverse_of => :locations
  before_save :geocode, :generate_secret
  #validates :truck_id, :presence => true

  def send_code_text
    current_date = Date.current
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+17172301041', :to => self.truck.phone, :body => "Your trucKlub code for #{current_date} is '#{self.secret_code}'. Reply with your address to be added to our map.")
  end

  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end

  def generate_secret
    # no words < 3 or > than 7 ot words with underscores
    RandomWord.exclude_list << /_/ << /^.{0,3}$/ << /^.{8,100}$/
    if self.secret_code.blank?
      self.secret_code = RandomWord.nouns.first
    end
  end


end
