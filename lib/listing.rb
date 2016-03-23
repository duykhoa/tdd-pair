class Listing
  attr_reader :array

  def initialize(array:)
    @array = array
  end

  def build
    result = [ array ]
    while result.size < total_mutations do
      a_mutate = mutate
      result << a_mutate unless result.include?(a_mutate)
    end

    result
  end

  def total_mutations
    (1..array.size).reduce(:*)
  end

  def mutate
    dup = array
    begin
      dup = array.shuffle
    end while dup == array
    dup
  end
end
