class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self
  end

  def memberships
    Membership.all.select { |ms| ms.lifter == self }
  end

  def gyms
    self.memberships.map { |ms| ms.gym }
  end

  def membership_costs
    costs = self.memberships.map { |ms| ms.cost }
    costs.sum
  end
  
  def sign_up(gym,membership_price)
    Membership.new(gym,self,membership_price)
  end

  def self.all
    @@all
  end

  def self.average_lift_total
    totals = self.all.map { |lifter| lifter.lift_total }
    totals.sum / totals.size
  end


  # Get a list of all lifters

  # Get a list of all the memberships that a specific lifter has
  
  # Get a list of all the gyms that a specific lifter has memberships to
  
  # Get the average lift total of all lifters
  
  # Get the total cost of a specific lifter's gym memberships
  
  # Given a gym and a membership cost, sign a specific lifter up for a new gym

end
