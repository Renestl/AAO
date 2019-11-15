class Employee
  attr_reader :name, :title, :salary, :boss

  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
end

class Manager < Employee
  def initialize(name, title, salary, boss, *employees)
    super(name, title, salary, boss)
    @employees = [employees]
  end
end

# ned = Manager.new("Ned", 1000000, "Founder", nil, darren)
# darren = Manager.new("Darren", 78000, "TA Manager", "Ned", shawna, david)
# shawna = Employee.new("Shawna", 12000, "TA", "Darren")
# david = Employee.new("David", 10000, "TA", "Darren")

# p ned.bonus(5) # => 500_000
# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000