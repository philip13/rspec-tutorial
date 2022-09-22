# bouncer_spec.rb
require 'bouncer'

describe 'Bouncer' do
  it 'rejects xx from entering the venue' do
    b = Bouncer.new
    expect(b).to be_truthy
    bounced = b.bounce('xx')
    expect(bounced).to be_truthy
  end
end