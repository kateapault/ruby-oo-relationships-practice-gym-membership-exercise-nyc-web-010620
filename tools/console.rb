# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l_names = ["Ajax","Bessie","Cirilla","Daniel","Effie","Fenrir","Geralt","Harold","Iliodor"]
l_lifts = [100,300,235,250,275,350,405,375,125]
g_names = ["Fools' Gold Gym", "Gems Gym", "Jim's Gym"]
g_costs = [30,40,20]

(0..8).each { |i| Lifter.new(l_names[i],l_lifts[i]) }
(0..2).each { |i| Gym.new(g_names[i],g_costs[i]) }

l = Lifter.all
g = Gym.all

l[0].sign_up(g[0],g[0].cost)
l[0].sign_up(g[1],g[1].cost)
l[0].sign_up(g[2],g[2].cost)
l[1].sign_up(g[0],g[0].cost)
l[1].sign_up(g[1],g[1].cost)
l[2].sign_up(g[2],g[2].cost)
l[2].sign_up(g[0],g[0].cost)
l[3].sign_up(g[1],g[1].cost)
l[3].sign_up(g[2],g[2].cost)
l[4].sign_up(g[0],g[0].cost)
l[4].sign_up(g[1],g[1].cost)
l[5].sign_up(g[2],g[2].cost)
l[5].sign_up(g[0],g[0].cost)
l[6].sign_up(g[1],g[1].cost)
l[6].sign_up(g[2],g[2].cost)
l[7].sign_up(g[0],g[0].cost)
l[7].sign_up(g[1],g[1].cost)
l[8].sign_up(g[2],g[2].cost)

# test code goes here

binding.pry

puts "Gains!"
