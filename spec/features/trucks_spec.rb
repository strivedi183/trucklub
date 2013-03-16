require 'spec_helper'


describe 'Trucks' do

  describe 'GET /trucks' do

    it 'displays lists of trucks' do
      create_trucks
      visit trucks_path
      page.find('td', :text => 'Fishing Shrimp')
    end

    it 'displays a map of truck locations with 3 pins' do
      create_trucks
      visit trucks_path
      # count pins
    end
  end
end


def create_trucks
  Truck.create(:title => 'Fishing Shrimp', :description => 'Seafood', :twitter => 'FishingShrimp' , :phone => '914-649-8398')
  Truck.create(:title => 'Lukes Lobsters', :description => 'Seafood', :twitter => 'LukesLobsterNY' , :phone => '917-922-2816')
  Truck.create(:title => 'Mud Truck', :description => 'Coffee', :twitter => 'mudpeople' , :phone => '717-503-3849')
end
