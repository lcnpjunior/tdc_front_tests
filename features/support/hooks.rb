
require 'benchmark'

Around do |scenario, block|
    time = Benchmark.realtime do
      block.call
    end
    puts 'Benchmark - time taken in seconds:', time
end