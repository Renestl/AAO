class Employee
  attr_reader :name, :title, :salary, :boss

  def initialize(name, salary, title, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  def initialize(name, salary, title, boss, *employees)
    super(name, salary, title, boss)
    @employees = employees
  end

  def bonus(multiplier)
    total_sub_salary = 0

    @employees.each do |emp|
      emp.each do |sub |
        total_sub_salary += sub.salary
      end
    end
    total_sub_salary * multiplier
  end
end

# ned = Manager.new("Ned", 1000000, "Founder", nil, darren)
# darren = Manager.new("Darren", 78000, "TA Manager", "Ned", shawna, david)
# shawna = Employee.new("Shawna", 12000, "TA", "Darren")
# david = Employee.new("David", 10000, "TA", "Darren")

# p ned.bonus(5) # => 500_000
# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000
