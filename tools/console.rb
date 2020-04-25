# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#membership arguments: cost, lifter, gym

gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Equinox")
lifter1 = Lifter.new("Tashawn", 100)
membership1 = Membership.new(100, lifter1, gym1)
membership2 = Membership.new(200,lifter1, gym2)

binding.pry

puts "Gains!"
