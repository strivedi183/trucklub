# == Schema Information
#
# Table name: eaters
#
#  id         :integer          not null, primary key
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Eater do
  describe '.new' do
    it 'creates an instance of Eater' do
      eater = Eater.new
      expect(eater).to be_an_instance_of(Eater)
    end
  end

  describe '#user' do
    it 'has a user' do
      eater = Eater.new
      user = User.new
      eater.user = user
      expect(eater.user).to be_an_instance_of(User)
    end
  end

  describe '.create' do
    it 'has an id' do
      eater = Eater.create(location: 'test')
      expect(eater.id).to_not be nil
    end
    it 'location fails validation when blank' do
      eater = Eater.create
      expect(eater.id).to be nil
    end
  end

  describe '#metadata' do
    it 'has eater properties' do
      eater = Eater.create(location: 'test')
      expect(eater.id).to_not be nil
      expect(eater.location).to eq 'test'
    end
  end
end