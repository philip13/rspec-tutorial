require 'rook'

describe "Rook" do
  let(:rook){ Rook.new }

  it 'return the correct points value' do
    # rook = Rook.new
    rook_points = rook.points
    # expect(rook_points).to be(5) 
    expect(rook_points).to eq(5) 

  end

  it 'returns the correct name' do
    # rook = Rook.new
    roo_name = rook.name
    expect(roo_name).to eq('Rook')
  end

  it 'returns a point value greater than a pawns' do 
    # rook = Rook.new
    rook_points = rook.points
    expect(rook_points).to be_between(1, 10).exclusive
  end
end



# Compared using equal?, which compares object identity,
# but expected and actual are not the same object. Use
#`expect(actual).to eq(expected)` if you don't care about
#object identity in this example.


# ... (1, 10).exclusive => [2,3,4,5,6,7,8,9]
    # ... (1, 10).inclusive => [1,2,3,4,5,6,7,8,9,10]