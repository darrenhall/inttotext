require "spec_helper"
require_relative "../../lib/converter.rb"


C = Converter.new 



describe Converter do


  describe '.initialize' do 
    context "when initialized" do
      it 'word_text should be = to ""' do
        converter = Converter.new
        expect(converter.word_text).to eql("")
      end

      it 'number_words_hash should be = to a hash map of numbers and words' do
        converter = Converter.new
        expect(converter.number_words_hash).to eql({
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
        })
      end
    end
  end



  describe '.convert' do 
    context "given a valid number as a string" do
      it 'should return the number in word form' do
        expect(C.convert("0")).to eql("zero")
      end
      it 'should return the number in word form' do
        expect(C.convert("-123")).to eql("negative one hundred and twenty three ")
      end
      it 'should return the number in word form' do
        expect(C.convert("4572837.667")).to eql("four million, five hundred and seventy two thousand, eight hundred and thirty seven point six six seven ")
      end
      it 'should return the number in word form' do
        expect(C.convert("01")).to eql("one ")
      end
      it 'should return the number in word form' do
        expect(C.convert("7263927364.44")).to eql("seven billion, two hundred and sixty three million, nine hundred and twenty seven thousand, three hundred and sixty four point four four ")
      end
      it 'should return the number in word form' do
        expect(C.convert("3400103")).to eql("three million, four hundred thousand, one hundred and three ")
      end
    end
    context "given a valid number as an integer" do
      it 'should return the number in word form' do
        expect(C.convert(321)).to eql("three hundred and twenty one ")
      end
    end
  end



  describe '.convert_number_to_words' do 
    context "given a valid number as a string" do
      it 'should return the number in word form' do
        expect(C.convert_number_to_words("123")).to eql("one hundred twenty three")
      end
    end
    context "given a valid number as an integer" do
      it 'should return the number in word form' do
        expect(C.convert_number_to_words(321)).to eql("three hundred twenty one")
      end
    end
  end



  describe '.add_punctuation' do 
    context "given a valid number as a string" do
      it 'should return the string with correct commas and "and"' do
        expect(C.add_punctuation("one thousand one hundred twenty three")).to eql("one thousand, one hundred and twenty three ")
      end
    end
  end



  describe '.contains_decimal?' do 
    context "given a number with a decimal" do
      it 'should return true' do
        expect(C.contains_decimal?("12.5")).to eql(true)
      end
    end
    context "given an invalid number" do
      it 'should return false' do
        expect(C.contains_decimal?("12")).to eql(false)
      end
    end
	end



  describe '.is_negative_number?' do 
    context "given a negative number" do
      it 'should return true' do
        expect(C.is_negative_number?("-676")).to eql(true)
      end
    end
    context "given an positive number" do
      it 'should return false' do
        expect(C.is_negative_number?("676")).to eql(false)
      end
    end
  end



  describe '.remove_double_spacing' do 
    context "given a string that contains double spaces" do
      it 'should return string with single spaces instead' do
        expect(C.remove_double_spacing("six hundred  and five")).to eql("six hundred and five")
      end
    end
    context "given a string that does not contain double spaces" do
      it 'should return string with no modification' do
        expect(C.remove_double_spacing("six hundred and five")).to eql("six hundred and five")
      end
    end
  end


	
end