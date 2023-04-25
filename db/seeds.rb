User.destroy_all
u1 = User.create :user_email => 'jonesy@ga.co', :password => 'chicken'
u2 = User.create :user_email => 'craigsy@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Player.destroy_all
p1 = Player.create :player_name => 'Marcus Rashford'
p2 = Player.create :player_name => 'Bukayo Saka'
p3 = Player.create :player_name => "Wilfred Zaha"
p4 = Player.create :player_name => 'Jack Grealish'
puts "#{ Player.count } players"

Manager.destroy_all
m1 = Manager.create :manager_name => 'Erik ten Hag'
m2 = Manager.create :manager_name => 'Mikel Arteta'
m3 = Manager.create :manager_name => 'Roy Hodgson'
m4 = Manager.create :manager_name => 'Pep Guardiola'
puts "#{ Manager.count } managers"

Team.destroy_all
t1 = Team.create :team_name => 'Manchester United'
t2 = Team.create :team_name => 'Arsenal'
t3 = Team.create :team_name => 'Crystal Palace'
t4 = Team.create :team_name => 'Manchester City'
puts "#{ Team.count } teams"

# Record.destroy_all
# r1 = Record.create :standing => '1'
# r2 = Record.create :standing => '2'
# r3 = Record.create :standing => '3'
# r4 = Record.create :standing => '4'
# puts "#{ Record.count } place"

# Associations
puts "Players and teams"
t1.players << p1
t2.players << p2
t3.players << p3
t4.players << p4

puts "Managers and teams"
t1.managers << m1
t2.managers << m2
t3.managers << m3
t4.managers << m4