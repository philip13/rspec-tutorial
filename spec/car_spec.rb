require_relative '../lib/car.rb'

describe Car do
  describe '#fill_up' do
    it 'the car should have maximun fuel' do
      c = Car.new(50)
      
      # p = Pump.new
      p = double('Pump', dispense_fuel: 100)

      c.fill_up(p)

      expect(c.fuel_level).to eq(100)
    end
  end
end