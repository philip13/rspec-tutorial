# board_spec.rb
require_relative '../lib/board'
require_relative 'custom_matcher'

RSpec.describe Board do
  describe '#total_pices' do
  	it 'has a total of 32 pices' do
  		b = Board.new
  		expect(b.total_prices).to CustomMatcher.custom_matcher(32)
  		#eq(32)
  	end
  end
end