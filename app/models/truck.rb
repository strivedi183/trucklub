# == Schema Information
#
# Table name: trucks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  about       :text
#  description :text
#  twitter     :string(255)
#  phone       :string(255)
#  image_url   :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Truck < ActiveRecord::Base
  attr_accessible :title, :description, :twitter, :phone, :image_url, :about
  has_one :user, :as => :userable
  has_many :locations, :inverse_of => :truck
  has_many :meals, :inverse_of => :truck
  validates :title, :description, :twitter, :phone, :presence => true
end
