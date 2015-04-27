require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  describe("#volume") do
    it("determines the volume of the parcel based on it's dimensions") do
      test_parcel = Parcel.new(4, 2, 1, 2) #length(in), width, height, weight(lb)
      expect(test_parcel.volume()).to(eq(8))
    end
  end

  describe('#cost_to_ship') do
    it("determines the cost of shipping due to volume and weight") do
      test_parcel = Parcel.new(4, 2, 1, 2)
      expect(test_parcel.cost_to_ship(100)).to(eq(16))
    end
    it("determines the cost of shipping based on volume, weight, and distance.") do
      test_parcel = Parcel.new(4, 2, 1, 2)
      expect(test_parcel.cost_to_ship(200)).to(eq(32))
    end


  end

end
