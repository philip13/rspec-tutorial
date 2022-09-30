# sandwich.rb
class Sandwich
	attr_accessor :meat, :chees, :condiments

	def initialize( meat, chees, condiments )# initialize
		self.meat = meat
		self.chees = chees
		self.condiments = condiments
	end
end