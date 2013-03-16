Truck.delete_all
Location.delete_all


t1 = Truck.create(:title => 'Fishing Shrimp', :description => 'Seafood', :twitter => 'FishingShrimp' , :phone => '914-649-8398')
t2 = Truck.create(:title => 'Lukes Lobsters', :description => 'Seafood', :twitter => 'LukesLobsterNY' , :phone => '917-922-2816')
t3 = Truck.create(:title => 'Mud Truck', :description => 'Coffee', :twitter => 'mudpeople' , :phone => '212-555-1221')
t4 = Truck.create(:title => 'Crusin Kitchen', :description => 'American', :twitter => 'Cruisin_Kitchen' , :phone => '212-555-1212')

l1 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
l2 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: 'Union Square, NYC' )
l3 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '920 Broadway, NYC' )

l1.truck = t1
l1.save
l2.truck = t2
l2.save
l3.truck = t3
l3.save
