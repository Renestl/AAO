class Bootcamp
	def initialize(name, slogan, student_capacity)
		@name = name
		@slogan = slogan
		@student_capacity = student_capacity
		@teachers = []
		@students = []
		@grades = Hash.new { |hash, key| hash[key] = [] }
	end

	# getters
	def name
		@name
	end

	def slogan
		@slogan
	end

	def student_capacity
		@student_capacity
	end

	def teachers
		@teachers
	end

	def students
		@students
	end

	def hire(teacher)
		@teachers << teacher
	end

	def enroll(student)
		if students.length < student_capacity
			@students << student
			return true
		else
			return false
		end
	end

	def enrolled?(student)
		if students.include?(student)
			return true
		else
			return false
		end
	end

	

end
