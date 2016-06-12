class Input


	# Get number from user
	def get_input_from_user 
		print "Give me a number: "
		return gets.chomp
	end


	# Check if user input is an integer with no decimal places
	def validate_user_input(user_input)

		# remove commas
		user_input = strip_commas(user_input)

		# remove spaces
		user_input = strip_spaces(user_input)

		# check if numeric
		if is_numeric? user_input
			return { "result" => true, "user_input" => user_input }
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

	# remove any commas in the string
	def strip_commas(user_input)
		return user_input.to_s.gsub(',', '')
	end

	# remove any spaces in the string
	def strip_spaces(user_input)
		return user_input.to_s.gsub(' ', '')
	end

end