require 'spec_helper'


describe 'Trucks' do

  describe 'GET /trucks' do

    it 'displays lists of trucks' do
      create_trucks
      visit trucks_path
      page.has_content?('Fishing Shrimp')
      page.has_content?('Lukes Lobsters')
      page.has_content?('Mud Truck')
    end

    it 'does not display a truck that is not there' do
      create_trucks
      visit trucks_path
      page.has_content?('Ralphs Truck')
    end

    it 'displays a google map' do
      create_trucks
      visit trucks_path
      page.has_content?('#map_canvas')
    end
  end
end


def create_trucks
  Truck.create(:title => 'Fishing Shrimp', :description => 'Seafood', :twitter => 'FishingShrimp' , :phone => '914-649-8398')
  Truck.create(:title => 'Lukes Lobsters', :description => 'Seafood', :twitter => 'LukesLobsterNY' , :phone => '917-922-2816')
  Truck.create(:title => 'Mud Truck', :description => 'Coffee', :twitter => 'mudpeople' , :phone => '717-503-3849')
end
