Truck.delete_all
Location.delete_all
User.delete_all
Eater.delete_all

u1 = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a')
u2 = User.create(name: 'joe', email: 'joe@gmail.com', password: 'a', password_confirmation: 'a')
u3 = User.create(name: 'sue', email: 'sue@gmail.com', password: 'a', password_confirmation: 'a')
u4 = User.create(name: 'ron', email: 'ron@gmail.com', password: 'a', password_confirmation: 'a')
u5 = User.create(name: 'sandip', email: 'sandip@gmail.com', password: 'a', password_confirmation: 'a')
u6 = User.create(name: 'tony', email: 'tony@gmail.com', password: 'a', password_confirmation: 'a')
u7 = User.create(name: 'admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a')

u7.is_admin = true
u7.save

e1 = Eater.create(location: '10 East 21st Street, NY, NY')
e2 = Eater.create(location: '10 East 21st Street, NY, NY')
e3 = Eater.create(location: '10 East 21st Street, NY, NY')

t1 = Truck.create(:title => 'Taco Bite', :description => 'Seafood', :twitter => 'FishingShrimp' , :phone => '+19146498398')
t2 = Truck.create(:title => 'Lukes Lobsters', :description => 'Seafood', :twitter => 'LukesLobsterNY' , :phone => '+19179222816')
t3 = Truck.create(:title => 'Mud Truck', :description => 'Coffee', :twitter => 'mudpeople' , :phone => '+19172512795')
t4 = Truck.create(:title => 'Crusin Kitchen', :description => 'American', :twitter => 'Cruisin_Kitchen' , :phone => '+17175033849')
t4 = Truck.create(:title => 'Taim Mobile', :description => 'Middle Eastern', :twitter => 'TaimMobile' , :phone => '+17175033849')
t5 = Truck.create(:title => 'Sweetery NYC', :description => 'Desert', :twitter => 'sweeterynyc' , :phone => '+17175033849')
t6 = Truck.create(:title => 'Van Leeuwen Artisan', :description => 'Desert', :twitter => 'vlaic' , :phone => '+17175033849')
t7 = Truck.create(:title => "Big D's Grub Truck", :description => 'Asian Tacos', :twitter => 'bigdsgrub' , :phone => '+17175033849')
t8 = Truck.create(:title => 'Go Burger', :description => 'Burgers', :twitter => 'go_burger' , :phone => '+17175033849')
t9 = Truck.create(:title => "Shorty's NYC", :description => 'Cheesesteak', :twitter => 'shortysnyc' , :phone => '+17175033849')
t10 = Truck.create(:title => "Shorty's NYC", :description => 'Cheesesteak', :twitter => 'shortysnyc' , :phone => '+17175033849')
t11= Truck.create(:title => 'Munchie Mobile', :description => 'Burgers', :twitter => 'MunchieMobileNY' , :phone => '+17175033849')
t12 = Truck.create(:title => 'Wafles & Dinges', :description => 'Waffles', :twitter => 'waffletruck' , :phone => '+17175033849')

l1 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: 'Empire State Building, NYC' )
l2 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: 'Union Square, NYC' )
l3 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '920 Broadway, NYC' )
l4 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '920 Broadway, NYC' )
l5 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '220 East 23rd Street, NYC' )
l6 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '555 Fifth Avenue, NYC' )
l7 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '8th Avenue & 31st Street , NYC' )
l8 = Location.create(location_date: '2013-03-16', arrival_time: '10:00', departure_time: '14:00', address: '455 E 114th St, NYC' )

m1 = Meal.create(meal_date: '2013-03-16', meal_time: '13:00')
m2 = Meal.create(meal_date: '2013-02-14', meal_time: '12:30')
m3 = Meal.create(meal_date: '2013-01-17', meal_time: '13:00')
m4 = Meal.create(meal_date: '2013-02-12', meal_time: '12:45')
m5 = Meal.create(meal_date: '2012-11-30', meal_time: '11:45')
m6 = Meal.create(meal_date: '2011-12-31', meal_time: '23:00')

e1.meals << m1 << m2 << m4 << m6
e2.meals << m3
e3.meals << m5

l1.truck = t1
l1.save
l2.truck = t2
l2.save
l3.truck = t3
l3.save

t1.locations << l1
t2.locations << l2
t3.locations << l3
t4.locations << l4
t5.locations << l5
t6.locations << l6
t7.locations << l7
t8.locations << l8

t1.meals << m1 << m2
t2.meals << m3 << m4
t3.meals << m5 << m6

e1.user = u1
e2.user = u2
e3.user = u3
t1.user = u4
t2.user = u5
t3.user = u6