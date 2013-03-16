# == Schema Information
#
# Table name: trucks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  twitter     :string(255)
#  phone       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Truck < ActiveRecord::Base
  attr_accessible :title, :description, :twitter, :phone
  has_one :user, :as => :userable
  has_many :meals, :inverse_of => :truck
  validates :title, :description, :twitter, :phone, :presence => true

end
