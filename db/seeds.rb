# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all

g1 = Game.create(:title => 'Red Dead Redemption 2', :description => "1899 a gang of outlaws led by Dutch Van Der Linde fail a robbery and now need to fight against the law and travel across the wild country of America and when problems threaten to tear the gang apart, lead enforcer Arthur Morgan must choose between his ideals or the man who raised him.", :release => '2018-10-26', :developer => 'Rockstar Games', :image => '')

g2 = Game.create(:title => 'Grand Theft Auto 5', :description => "The story of three uniquely-different criminals as they commit daring and profitable heists across the sprawling city of Los Santos. Michael is an ex-con whose past catches up to him when previous crime partner Trevor starts making a name for himself as a drug-lord of Sandy Shores.", :release => '2013-09-17', :developer => 'Rockstar Games', :image => '')

g3 = Game.create(:title => 'God of War', :description => "Following the death of Kratos' second wife, Atreus' mother, they journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nature.", :release => '2018-04-20', :developer => 'Santa Monica Studio', :image => '')

g4 = Game.create(:title => 'Escape From Tarkov', :description => "Escape from Tarkov is a story-based experience that challenges all comers to escape the city with their lives. Matches are session-based and inhabited not only by human players but AI-driven Scavs to fill the world ensuring a constant air of danger.", :release => '2017-07-27', :developer => 'Battlestate Games', :image => '')

g5 = Game.create(:title => 'Counter Strike Global Offensive', :description => "The game pits two teams, Terrorists and Counter-Terrorists, against each other in different objective-based game modes. The most common game modes involve the Terrorists planting a bomb while Counter-Terrorists attempt to stop them, or Counter-Terrorists attempting to rescue hostages that the Terrorists have captured.", :release => '2012-08-21', :developer => 'Valve', :image => '')

g6 = Game.create(:title => 'Rocket League', :description => "Rocket League is a fantastical sport-based video game, developed by Psyonix (it's “soccer with cars”). It features a competitive game mode based on teamwork and outmaneuvering opponents. Players work with their team to advance the ball down the field, and score goals in their opponents' net.", :release => '2015-07-07', :developer => 'Psyonix', :image => '')

g7 = Game.create(:title => 'Rust', :description => "As a multiplayer-only video game, Rust pits players against each other in a harsh, open world environment with the sole goal of survival. Animals, such as wolves and bears, act as a looming threat, but the primary danger comes from other players.", :release => '2013-12-11', :developer => 'Facepunch Studios', :image => '')

puts "#{ Game.count } games created."


Genre.destroy_all 

l1 = Genre.create(:name => 'FPS')
l2 = Genre.create(:name => 'RTS')
l3 = Genre.create(:name => 'Action')
l4 = Genre.create(:name => 'RPG')
l5 = Genre.create(:name => 'MOBA')
l6 = Genre.create(:name => 'Survival')
l7 = Genre.create(:name => 'Horror')
l8 = Genre.create(:name => 'Platformer')
l9 = Genre.create(:name => 'Sports')
l10 = Genre.create(:name => 'Simulation')
l11 = Genre.create(:name => 'Multiplayer/Online')
l12 = Genre.create(:name => 'Singleplayer')
l13 = Genre.create(:name => 'Co-op')

puts "#{ Genre.count } genres created."

Review.destroy_all 

r1 = Review.create(:title => 'Red Dead Redemption 2 Review', :description => 'blah blah blah')
r2 = Review.create(:title => 'Rust Review', :description => 'blah blah blah')

puts "#{ Review.count } review created."

User.destroy_all

u1 = User.create(:email => "lukas@ga.co", :password => "chicken")
u2 = User.create(:email => "nelson@ga.co", :password => "chicken")

puts "#{ User.count } user created."

############################################################
                  # Association #
############################################################

puts "Game and Review"

g1.reviews << r1