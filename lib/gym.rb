class Gym
  attr_reader :name
  @@all = []  

  def initialize(name)
    @name = name
    Gym.all  << self
  end

  def self.all
    @@all
  end

end

# gym must have a name.
# cannot chnge its name.

# Get a list of all gyms
#self.all

# - Get a list of all memberships at a specific gym
# gym has many memberships

# - Get a list of all the lifters that have a membership to a specific gym
# gym has many lifters

# - Get a list of the names of all lifters that have a membership to that gym

# - Get the combined lift total of every lifter has a membership to that gym