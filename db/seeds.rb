Truck.delete_all
Location.delete_all
User.delete_all
Eater.delete_all

u1 = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
u2 = User.create(name: 'joe', email: 'joe@gmail.com', password: 'a', password_confirmation: 'a')
u3 = User.create(name: 'sue', email: 'sue@gmail.com', password: 'a', password_confirmation: 'a')

e1 = Eater.create(location: '10 East 21st Street, NY, NY')
e2 = Eater.create(location: '10 East 21st Street, NY, NY')
e3 = Eater.create(location: '10 East 21st Street, NY, NY')

t1 = Truck.create(:title => 'Fishing Shrimp', :description => 'Seafood', :twitter => 'FishingShrimp' , :phone => '+19146498398')
t2 = Truck.create(:title => 'Lukes Lobsters', :description => 'Seafood', :twitter => 'LukesLobsterNY' , :phone => '+19179222816')
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

t1.locations << l1
t2.locations << l2
t3.locations << l3

e1.user = u1
e2.user = u2
e3.user = u3