class Employee
  attr_reader :name, :title, :salary
  attr_accessor :boss

  def initialize(name, salary, title, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss
  end

  def bonus(multiplier)
    self.salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :employees

  def initialize(name, salary, title, boss, *employees)
    super(name, salary, title, boss)
    @employees = employees
  end

  def bonus(multiplier)
    total_sub_salary = 0

    @employees.each do |emp|
      emp.each do |sub |
        if sub.class == Employee
          total_sub_salary += sub.salary * multiplier
        else
          total_sub_salary += sub.bonus(multiplier) + sub.salary * multiplier
        end
      end
    end
    total_sub_salary
  end
end

# ned = Manager.new("Ned", 1000000, "Founder", nil, darren)
# darren = Manager.new("Darren", 78000, "TA Manager", "Ned", shawna, david)
# shawna = Employee.new("Shawna", 12000, "TA", "Darren")
# david = Employee.new("David", 10000, "TA", "Darren")

# ned = Manager.new("Ned", 1000000, "Founder", nil)
# darren = Manager.new("Darren", 78000, "TA Manager", "Ned")
# shawna = Employee.new("Shawna", 12000, "TA", "Darren")
# david = Employee.new("David", 10000, "TA", "Darren")

# p ned.bonus(5) # => 500_000
# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000
