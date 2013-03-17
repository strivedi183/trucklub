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
  has_many :meals
  validates :location, :presence => true


  def meal_count
    self.meals.count.to_s
  end

end
