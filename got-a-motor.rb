class Vehicle
  attr_accessor :odometr
  attr_accessor :gas_used

  def milage
    @odometr / @gas_used
  end

  def accelerate 
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

end

class Car < Vehicle
end

class Truck <Vehicle
  attr_accessor :cargo

  def load_bed (contents)
    puts "Securing #{contents} in the truk bed"
    @cargo = contents
  end

end

class Motocycle < Vehicle
  def steer
    puts "Turn front wheels"
  end
end

truck = Truck.new
truck.accelerate
truck.steer
truck.odometr = 11432
truck.gas_used = 366
print "Lifetime MPG: "
puts truck.milage
truck.load_bed("259 bouncy balls")
puts "The truck is carring #{truck.cargo}."
puts ()
car = Car.new
puts car.instance_variables
car.odometr = 22914
car.gas_used = 728
puts car.instance_variables
puts ()
motocycle = Motocycle.new
motocycle.steer
motocycle.accelerate