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
puts "#{ Manager.count } albums"

Team.destroy_all
t1 = Team.create :name => 'Manchester United'
t2 = Team.create :name => 'Arsenal'
t3 = Team.create :name => 'Crystal Palace'
t4 = Team.create :name => 'Manchester City'
puts "#{ Team.count } artists"

Genre.destroy_all
g1 = Genre.create :name => 'Nautical Text Rock'
g2 = Genre.create :name => 'Nautical Math Rock'
g3 = Genre.create :name => 'Folk'
g4 = Genre.create :name => 'Scottish Misery Rock'
g5 = Genre.create :name => 'Bubblegum Pop'
g6 = Genre.create :name => 'Bollywood'
g7 = Genre.create :name => 'Skronk'
puts "#{ Genre.count } genres"

Mixtape.destroy_all
m1 = Mixtape.create :title => 'Driving Songs'
m2 = Mixtape.create :title => 'Makeout Music'
m3 = Mixtape.create :title => 'Code Jams'
m4 = Mixtape.create :title => 'Monkey Mongs'
puts "#{ Mixtape.count } mixtapes"

# Associations
puts "Albums and songs"
li.songs << s1
l2.songs << s2
l3.songs << s3
l4.songs << s4

puts "Artists and songs"
a1.songs << s1
a2.songs << s2
a3.songs << s3
a4.songs << s4

puts "Genres and songs"
s1.genres << g5 << g6 
s2.genres << g1 << g2
s3.genres << g3 << g4
g7.songs << s4 # s4.genres << g7

puts "Mixtapes and songs"
m1.songs << s1 << s2 << s3 << s4
m2.songs << s1 << s1 << s1 << s1
m3.songs << s2 << s4 << s2 << s4

puts "Mixtapes and users"
u1.mixtapes << m1 << m2
u2.mixtapes << m3 << m4 