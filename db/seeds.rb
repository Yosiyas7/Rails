User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Player.destroy_all
p1 = Player.create :name => 'Marcus Rashford'
p2 = Player.create :name => 'Bukayo Saka'
p3 = Player.create :name => "Wilfred Zaha"
p4 = Player.create :name => 'Jack Grealish'
puts "#{ Player.count } players"

Manager.destroy_all
m1 = Manager.create :name => 'Erik ten Hag'
m2 = Manager.create :name => 'Mikel Arteta'
m3 = Manager.create :name => 'Roy Hodgson'
m4 = Manager.create :name => 'Pep Guardiola'
puts "#{ Manager.count } managers"

Team.destroy_all
t1 = Team.create :name => 'Manchester United'
t2 = Team.create :name => 'Arsenal'
t3 = Team.create :name => 'Crystal Palace'
t4 = Team.create :name => 'Manchester City'
puts "#{ Team.count } teams"

Record.destroy_all
r1 = Record.create :standing => '1'
r2 = Record.create :standing => '2'
r3 = Record.create :standing => '3'
r4 = Record.create :standing => '4'
puts "#{ Record.count } place"

# Associations
puts "Players and teams"
p1.teams << t1
p2.teams << t2
p3.teams << t3
p4.teams << t4

puts "Managers and teams"
m1.teams << t1
m2.teams << t2
m3.teams << t3
m4.teams << t4