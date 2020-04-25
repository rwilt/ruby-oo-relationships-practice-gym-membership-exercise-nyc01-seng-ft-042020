class Membership
  attr_reader :cost, :lifter, :gym
  @@all = []
  def initialize(cost, lifter, gym)
    #we added lifter and gym parameters bc this will be oiur join model.
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end

end

#membership must have a cost
#membership cannot change the cost
#to read that cost, we use membership.cost (they didnt wrtie
# a custom method)
# how do we know? no attr_reader.

# Deliverables Requested
# -Get a list of all memberships
# #self.all 

