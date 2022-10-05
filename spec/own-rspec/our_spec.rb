require 'colorize'

class OurSpec
  def self.describe(name, &block)
    puts name
    instance_eval &block
  end

  def self.context(name, &block)
    puts "  #{name}"
    instance_eval &block

  end

  def self.it(name, &block)
    puts "    #{name}"
    instance_eval &block
  end

  def self.expect(value)
    Expector.new(value)
  end

  def self.eq(value)
    value
  end

  class Expector
    attr_accessor :expected_value

    def initialize(expected_value)
      @expected_value = expected_value
    end

    def to(value)
      if( @expected_value == value )
        puts "      It passed!".blue
      else
        puts "      It fail! :(".red
      end
    end
  end
end


OurSpec.describe 'Dog' do
  context 'when it is hungry' do
    it 'begs for food' do
      expect(true).to eq(true)
    end

    it 'salivates' do
      expect(true).to eq(false)
    end
  end
end