# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  userable_id     :integer
#  userable_type   :string(255)
#  is_admin        :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  describe '.new' do
    it 'creates an instance of User' do
      user = User.new
      expect(user).to be_an_instance_of(User)
    end
    it 'has name, email, password and password confirmation' do
      user = User.new(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.name).to eq 'bob'
      expect(user.email).to eq 'bob@gmail.com'
      expect(user.password).to eq 'a'
      expect(user.password_confirmation).to eq 'a'
    end
  end

  describe '.create' do
    it 'has an id' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.id).to_not be nil
    end
    it 'fails validation if username or email is blank while supplying password' do
      user = User.create(:password => 'a', :password_confirmation => 'a')
      expect(user.id).to be nil
    end
  end

  describe '#truck' do
    it 'returns a Truck object' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      truck = Truck.create(title: 'test', description: 'test', twitter: 'test', phone: 'test')
      truck.user = user
      expect(user.is_truck?).to be_an_instance_of(Truck)
    end
    it 'return nil when the user is not a truck' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      eater = Eater.create(location: 'test')
      eater.user = user
      expect(user.is_truck?).to be nil
    end
  end

  describe '#eater' do
    it 'returns a Eater object' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      eater = Eater.create(location: 'test')
      eater.user = user
      expect(user.is_eater?).to be_an_instance_of(Eater)
    end
    it 'return nil when the user is not an eater' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      truck = Truck.create(title: 'test', description: 'test', twitter: 'test', phone: 'test')
      truck.user = user
      expect(user.is_eater?).to be nil
    end
  end

  describe '#is_admin' do
    it 'returns true when is user is assigned an is_admin value' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      user.is_admin = true
      user.save
      expect(user.is_admin).to be true
    end
    it 'returns false when user is created but not assigned is_admin' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
      expect(user.is_admin).to be false
    end
  end
end
