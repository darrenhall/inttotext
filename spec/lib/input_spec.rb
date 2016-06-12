require 'stringio'
require "spec_helper"
require_relative "../../lib/input.rb"


def get_input_from_user
  $stdin.gets.chomp
end



describe Input do


  describe ".get_input_from_user" do
    before do
      $stdin = StringIO.new("12\n")
    end
    after do
      $stdin = STDIN
    end
    it "should be '12'" do
      expect(get_input_from_user).to be == '12'
    end  
  end


	describe '.is_numeric?' do 
    context "given a valid number" do
  		it 'should return true' do
        input = Input.new
        expect(input.is_numeric?("12")).to eql(true)
      end
    end
    context "given an invalid number" do
      it 'should return false' do
        input = Input.new
        expect(input.is_numeric?("darren")).to eql(false)
      end
    end
	end


  describe '.strip_commas' do 
    context "given a string with commas" do
      it 'should return string with no commas' do
        input = Input.new
        expect(input.strip_commas("2,000")).to eql("2000")
      end
    end
    context "given a string with no commas" do
      it 'should return original string' do
        input = Input.new
        expect(input.strip_commas("3000")).to eql("3000")
      end
    end
  end


  describe '.strip_spaces' do 
    context "given a string with spaces" do
      it 'should return string with no spaces' do
        input = Input.new
        expect(input.strip_spaces(" 100")).to eql("100")
      end
    end
    context "given a string with no spaces" do
      it 'should return original string' do
        input = Input.new
        expect(input.strip_spaces("100")).to eql("100")
      end
    end
  end


  describe '.validate_user_input' do 
    context "given a valid number with no commas or spaces" do
      it 'should return hash containing true and valid number' do
        input = Input.new
        expect(input.validate_user_input("100")).to eql({"result" => true, "user_input" => "100"})
      end
    end
    context "given a valid number with commas" do
      it 'should return hash containing true and valid number with no commas' do
        input = Input.new
        expect(input.validate_user_input("1,000")).to eql({"result" => true, "user_input" => "1000"})
      end
    end
    context "given a valid number with spaces" do
      it 'should return hash containing true and valid number with no spaces' do
        input = Input.new
        expect(input.validate_user_input("1 000")).to eql({"result" => true, "user_input" => "1000"})
      end
    end
  end

	
end