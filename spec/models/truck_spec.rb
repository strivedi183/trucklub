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

require 'spec_helper'

describe Truck do
  describe '.new' do
    it 'creates an instance of Truck' do
      truck = Truck.new
      expect(truck).to be_an_instance_of(Truck)
    end
  end

  describe '#user' do
    it 'has a user' do
      truck = Truck.new
      user = User.new
      truck.user = user
      expect(truck.user).to be_an_instance_of(User)
    end
  end

  describe '.create' do
    it 'has an id' do
      truck = Truck.create(title: 'test', about: 'test', description: 'test', twitter: 'test', phone: 'test', image_url: 'test')
      expect(truck.id).to_not be nil
    end
    it 'title, description, twitter, phone fails validation when blank' do
      truck = Truck.create
      expect(truck.id).to be nil
    end
  end

  describe '#metadata' do
    it 'has truck properties' do
      truck = Truck.create(title: 'test', about: 'test', description: 'test', twitter: 'test', phone: 'test', image_url: 'test')
      expect(truck.id).to_not be nil
      expect(truck.title).to eq 'test'
      expect(truck.about).to eq 'test'
      expect(truck.description).to eq 'test'
      expect(truck.twitter).to eq 'test'
      expect(truck.phone).to eq 'test'
      expect(truck.image_url).to eq 'test'
    end
  end
end
