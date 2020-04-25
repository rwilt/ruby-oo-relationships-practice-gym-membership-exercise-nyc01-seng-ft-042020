class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def membership
  Membership.all.select do |members|
    members.lifter == self
    #single source of truth.
    # want a list of membershps belonging to a specific lifter?
    # ask the membership! 
  end
end

def new_membership(cost,gym)
  Membership.new(cost,self,gym)
end

def gyms 
  memberships.map do |membership|
    membership.gym
  end
  #using method we already defined as 
  #a helper method.
end

def membership_total
  total = 0
  membership.each do |member|
    total += member.cost
  end
  total
end


def self.all
  @@all
end

def self.lift_total
  arr = []
  self.all.each do |e|
  arr.push(e.lift_total)
  end
  arr.inject{ |sum, el| sum + el }.to_f / arr.size
end 

end


# #lifter must have a name
# and lift total. cannot change either of those things

# Deliverables Requested:
# - Get a list of all lifters
# this tells us they want a method to return a list of 
# all lifters. looks like .@@all def self.all end

#- Get a list of all the memberships that a specific lifter has
#instance method. they are asking for a SPECIFIC lifter.
# .lifters
# Lifter has many memberships.

# - Get a list of all the gyms that a specific lifter has memberships to
#membership is a join model. 
#lifter has many gyms. 

#-Methdo that will receive a gym instnace and membership cost (number) and create new membership.
#Membership.new(cost,self, gym)
