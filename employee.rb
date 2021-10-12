class Employee
  attr_reader :name, :salary

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    #puts @name, @salary
    #p @name, @salary
    puts "Name: #{@name}"
    puts format("Pay this period: $%0.2f", (@salary / 365.0) * 14)
  end

  def initialize(name = "Anonimus", salary = 0.0)
    @name = name
    @salary = salary
  end

end

any = Employee.new
any.print_pay_stub
anton = Employee.new("Any", 366)
anton.print_pay_stub