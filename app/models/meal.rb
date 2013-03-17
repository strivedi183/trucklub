# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  meal_date  :date
#  meal_time  :time
#  eater_id   :integer
#  truck_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meal < ActiveRecord::Base
  attr_accessible :meal_date, :meal_time, :eater_id, :truck_id
  belongs_to :truck, :inverse_of => :meals
  has_one :eater
  # validates :meal_date, :meal_time, :presence => true

  before_save :meal_timestamp
  private
  def meal_timestamp
    self.meal_date = Date.current
    self.meal_time = Time.now
  end
end
