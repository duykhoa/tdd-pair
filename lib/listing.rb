class Listing
  attr_reader :array

  def initialize(array:)
    @array = array
  end

  def build
    array.permutation.to_a
  end
end
