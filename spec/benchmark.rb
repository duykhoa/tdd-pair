require_relative '../lib/listing'
require 'benchmark'

array1 = (1..5).to_a
array2 = (1..10).to_a
array3 = (1..30).to_a

Benchmark.bmbm do |x|
  x.report { Listing.new(array: array1).build }
  x.report { Listing.new(array: array2).build }
  x.report { Listing.new(array: array3).build }
end
