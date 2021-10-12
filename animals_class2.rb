class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank"
    else
      @name = value
    end
  end

  def age=(value)
    if value < 0
      raise "An sge of #{value} isn't valid!"
    else
      @age = value
    end
  end


  def report_age
    puts "#{@name} is #{@age} yars old"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}"
  end

end

class Dog < Animal
  def to_s
    "#{name} the dog, age #{age}."
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says Chip!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says Meow!"
  end

  def to_s
    "#{name} the cat, age #{age}."
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{name} unrolls!"
    super
  end
end

whiskers = Cat.new
whiskers.name = "Whiskers"
whiskers.talk
whiskers.age = 4

arma = Armadillo.new
arma.name = "Arma"
arma.move ("home")

puts whiskers
p whiskers
# puts whiskers.methods
puts Cat.superclass
puts Animal.superclass
puts Animal.class