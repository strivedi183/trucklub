Truck.delete_all
Location.delete_all


t1 = Truck.create(:title => 'Fishing Shrimp', :description => 'Seafood', :twitter => 'FishingShrimp' , :phone => '914-649-8398')
t2 = Truck.create(:title => 'Lukes Lobsters', :description => 'Seafood', :twitter => 'LukesLobsterNY' , :phone => '')
t3 = Truck.create(:title => 'Mud Truck', :description => 'Coffee', :twitter => 'mudpeople' , :phone => '')
t4 = Truck.create(:title => 'Crusin Kitchen', :description => 'American', :twitter => 'Cruisin_Kitchen' , :phone => '')

l1 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
l2 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: 'Union Square, NYC' )
l3 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '920 Broadway, NYC' )

l1.truck_id = t1.id
l1.truck_id = t1.id
l3.truck_id = t3.id