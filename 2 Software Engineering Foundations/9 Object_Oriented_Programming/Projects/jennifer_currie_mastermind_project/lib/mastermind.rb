require_relative "code"

class Mastermind
	def initialize(length)
		@secret_code = Code.random(length)
	end

	def print_matches(code_inst)
		puts @secret_code.num_exact_matches(code_inst)
		puts @secret_code.num_near_matches(code_inst)	
	end


end
