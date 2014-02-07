# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  
  attr_reader :age, :height
  def initialize
    @age = 0
    @height = 1
    @oranges = []
    @genetic_height = (15..40).to_a.sample
  end
  # Ages the tree one year
  def age!
    @age += 1
    grow
    harvest
  end

  def grow
    @height += rand(2) if @height < @genetic_height
  end

  def harvest
    oranges = []
    (10..30).to_a.sample.times  do
      @oranges << Orange.new
    end
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.any?
  end

  def dead?
    return rand(5) == 1 if @age >= 80 
    return rand(4) == 1 if @age >= 85
    return rand(3) == 1 if @age >= 90
    return rand(2) == 1 if @age >= 95
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    @oranges.pop
  end
end

class Orange
  # Initializes a new Orange with diameter +diameter+
  def initialize
    @diameter = rand(1) + 3
  end
end

tree = OrangeTree.new
tree.age! until tree.any_oranges?
puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  avg_diameter = tree.avg_diameter

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"