require "employee"

class Startup
	attr_reader :name, :funding, :salaries, :employees

	def initialize(name, funding, salaries)
		@name = name
		@funding = funding
		@salaries = salaries
		@employees = []
	end

	def valid_title?(title)
 		@salaries.has_key?(title)
	end

	def >(other_startup)
		return true if self.funding > other_startup.funding
		false
	end

	def hire(employee_name, title)
		if self.valid_title?(title)
			@employees << Employee.new(employee_name, title)
		else
			raise 'This title is invalid.'
		end
	end

	def size
		return @employees.length
	end

	def pay_employee(employee)
		payment = @salaries[employee.title]

		if @funding >= payment
			employee.pay(payment)
			@funding -= payment			
		else
			raise 'There is not enough funding.'
		end
	end
	
	def payday
		@employees.map{ |employee| self.pay_employee(employee) }
	end

	def average_salary
		total = 0

		self.employees.each do |employee|
			total += salaries[employee.title]
		end

		total / self.size
	end

	def close
		@employees = []
		@funding = 0
	end

	def acquire(another_startup)
		#add funding
		@funding += another_startup.funding
	
		# merging salaries	
		@salaries.merge!(another_startup.salaries) { |salary, v1, v2| v1}
		
		# hire employees
		self.employees.concat(another_startup.employees)
		
		# close acquired startup
		another_startup.close
	end

end
