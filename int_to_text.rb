# import required classes
require './classes/input.rb'
require './classes/converter.rb'

I = Input.new
C = Converter.new

# Get input from user
user_input = I.get_input_from_user

validation = I.validate_user_input( user_input )

# Proceed if a valid number
if validation["result"]
	puts C.convert( validation["user_input"] )
end




