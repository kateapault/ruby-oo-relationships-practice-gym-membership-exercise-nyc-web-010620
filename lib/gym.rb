class Gym
  attr_accessor :cost
  attr_reader :name

  @@all = []

  def initialize(name, cost)
    @name = name
    @cost = cost

    @@all << self
  end

  def memberships
    Membership.all.select { |ms| ms.gym == self }
  end

  def members
    self.memberships.map { |ms| ms.lifter }
  end

  def member_names
    self.members.map { |lifter| lifter.name }
  end

  def lift_totals
    totals = self.members.map { |lifter| lifter.lift_total }
    totals.sum
  end

  def add_member(member,cost)
    Membership.new(self,member,cost)
  end

  def self.all
    @@all
  end
# Get a list of all gyms

# Get a list of all memberships at a specific gym

# Get a list of all the lifters that have a membership to a specific gym

# Get a list of the names of all lifters that have a membership to that gym

# Get the combined lift total of every lifter has a membership to that gym
end
