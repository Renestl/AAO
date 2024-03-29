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
		teachers << teacher
	end

	def enroll(student)
		if students.length < student_capacity
			students << student
			return true
		end
		
		false	
	end

	def enrolled?(student)
		students.include?(student)
	end

	def student_to_teacher_ratio
		students.length / teachers.length
	end

	def add_grade(student, grade)
		if self.enrolled?(student)
			@grades[student] << grade
			return true
		end

		false
	end

	def num_grades(student)
		@grades[student].length
	end

	def average_grade(student)
		if self.enrolled?(student) && num_grades(student) > 0
			return @grades[student].sum / num_grades(student)
		else
			return nil
		end
	end

end # end Bootcamp class
