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

require 'spec_helper'

describe Meal do
  describe '.new' do
    it 'creates an instance of Meal' do
      meal = Meal.new
      expect(meal).to be_an_instance_of(Meal)
    end
  end

  describe '.create' do
    it 'has an id' do
      meal = Meal.create
      expect(meal.id).to_not be nil
    end
    # it 'meal_date and meal_time fails validation when blank' do
    #   meal = Meal.create
    #   expect(meal.id).to be nil
    # end
  end

  describe '#metadata' do
    it 'has meal properties' do
      meal = Meal.create
      expect(meal.id).to_not be nil

      # expect(meal.meal_date).to eq(expected) Date.current
      # expect(meal.meal_time).to eq(expected) Time.now

    end
  end
end
