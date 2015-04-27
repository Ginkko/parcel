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

end
