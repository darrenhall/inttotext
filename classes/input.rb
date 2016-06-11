class Input


	# Get number from user
	def get_input_from_user 
		print "Give me a number: "
		return gets.chomp
	end


	# Check if user input is an integer with no decimal places
	def validate_user_input(user_input)
		puts "validating user input"

		if is_numeric? user_input
			return true
		else
			print "Hey! That is not a valid number. Try again:"
			user_input = gets.chomp
			validate_user_input( user_input )
		end

	end


	# check is variable is numeric
	def is_numeric?(obj) 
   obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
	end

end