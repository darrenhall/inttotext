class NumberToWord


	def initialize 

		@word_text = ""
		@number = ""


		# arrays of strings
		@one_figure = [ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" ]
		@two_figure = [ "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]


		@special_figures_text = [ "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]
		@special_figures_int = [ 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ]

	end
	

	def main(number)

		# split string to array
		number_array = number.to_s.split("")

		

		# check if single digit
		if number_array.length == 1
			@word_text = @one_figure[number_array.first.to_i]
		end

		
		puts @word_text

		# get length of number
		# check if number is in the millions, thousands, hundreads or smaller
		# go through each 
	end

end