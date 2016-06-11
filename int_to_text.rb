# import required classes
require './classes/input.rb'
require './classes/numbertoword.rb'

I = Input.new
N = NumberToWord.new

# Get input from user
user_input = I.get_input_from_user

validation = I.validate_user_input( user_input )

# Proceed if a valid number
if validation["result"]
	N.main( validation["user_input"] )
end




