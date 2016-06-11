class NumberToWord


	def initialize 
		@word_text = ""

		@number_words = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19 => "nineteen",
      18 => "eighteen",
      17 => "seventeen", 
      16 => "sixteen",
      15 => "fifteen",
      14 => "fourteen",
      13 => "thirteen",              
      12 => "twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
	end
	

	def main(user_number)
		# ensure int is a number
		user_number = user_number.to_i

		# check for negative


		# check if number is 0 otherwise convert
		if user_number == 0
			@word_text = "zero"
		else
			@word_text = convert_to_words(user_number)
		end

		# check for 
		
		puts @word_text
	end




	# Get the correct words for the number using the number_words hash
 	def convert_to_words(user_number)
		# temp string for holding number word
 		tmp_string = ""
 		# go through number_words hash
 		@number_words.each do |number, word|
 			if user_number == 0
 			  return tmp_string
 			elsif user_number.to_s.length == 1 && user_number/number > 0
 			  return tmp_string + "#{word}"      
 			elsif user_number < 100 && user_number/number > 0
 			  return tmp_string + "#{word}" if user_number%number == 0
 			  return tmp_string + "#{word} " + convert_to_words(user_number%number)
 			elsif user_number/number > 0
 			  return tmp_string + convert_to_words(user_number/number) + " #{word} " + convert_to_words(user_number%number)
 			end
 		end
 	end



end