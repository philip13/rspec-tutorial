require_relative '../lib/sandwich.rb'

describe Sandwich do
  context 'when the sandwich should be vegan' do
    let(:sandwich) {
      Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
    }
    it 'should not have meat' do
      # expect(vegan_sandwich.meat).to eq(false)
      expect(sandwich.meat).to eq(false)
    end
    
    it 'should not have chees' do
        expect( sandwich.chees).to eq(false)
    end
    
    it 'should not have mayonaise' do
      expect( sandwich.condiments).to_not include('mayonaise')
    end
  end

  context 'when the sandwich should not be vegan' do
    before(:each) do
      @sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
    end

    it 'should have meat' do
      expect(@sandwich.meat).to eq(true)
    end
    
    it 'should have chees' do
      expect(@sandwich.chees).to eq(true)
    end
    
    it 'should not mayonaise' do 
      expect(@sandwich.chees).to eq(true)
    end
  end
end

def vegan_sandwich
  Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
end