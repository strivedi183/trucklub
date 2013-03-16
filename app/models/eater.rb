# == Schema Information
#
# Table name: eaters
#
#  id         :integer          not null, primary key
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eater < ActiveRecord::Base
  attr_accessible :location
  has_one :user, :as => :userable
  validates :location, :presence => true
end
