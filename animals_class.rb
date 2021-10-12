class Dog

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

rex = Dog.new
rex.name = "Rex"
rex.age = 9
rex.report_age
rex.move("Home")
rex.talk

doggi = Dog.new
doggi.name = "Doggi"
doggi.age = 0
doggi.report_age
doggi.move("Home")
doggi.talk

=begin
  
class Cat
  def talk(name)
    puts "#{name} says Meow!"
  end

  def move(name, destination)
    puts "#{name} runs to the #{destination}"
  end
  
end

class Bird
  def talk(name)
    puts "#{name} says Chip! Chip!"
  end

  def move(name, destination)
    puts "#{name} flies to the #{destination}"
  end
  
=end
