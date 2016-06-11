class NumberToWord


	def initialize 
		@word_text = ""
		@user_number = ""

		@number_words = {
			1000000000000000000 => "quintillion",
			1000000000000000 => "quadrillion",
			1000000000000 => "trillion",
			1000000000 => "billion",
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

		# check if number is 0 otherwise convert
		if user_number == 0
			@word_text = "zero"
		else
			# check for negative
			if is_negative_number?(user_number)
				# remove -
				user_number[0] = ""
			end
			
			# convert number to words
			@word_text << convert_to_words(user_number)
			
			# check for decimals
			contains_decimal?(user_number)
		end

		# add correct punctuation
		#@word_text = add_punctuation(@word_text)
		
		puts @word_text
	end




	# Get the correct words for the number using the number_words hash
 	def convert_to_words(user_number)
 		# ensure int is a number
		user_number = user_number.to_i

		# temp string for holding number word
 		tmp_string = ""

 		# go through number_words hash to form word string
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




 	# Add correct punctuation between words
 	def add_punctuation (sentence)

 	end


 	# is first char a "-"
 	def is_negative_number? (number)
 		if number.to_s.chars.first == "-"
 			@word_text = "negative "
 			return true
 		end
 	end


 	# check if number has decimal point 
 	def contains_decimal?(user_number)
 		if user_number.include? "."
 			user_number_split = user_number.split(".")
			@word_text << " point " 

			# add each decimal number to the string
			user_number_split[1].split("").each do |number|
				@word_text << convert_to_words(number) + " "
			end
 		end
 	end




end
