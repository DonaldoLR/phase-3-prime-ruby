require 'benchmark'
require 'bigdecimal/math'
require 'prime'

Benchmark.bmbm do |bm|
  # My Implementation
  bm.report("My implementation") do
    # Add  code here!
    def prime_with_range(int)
      if int <= 1
        return false
      end

      (2...int).each do |num|
        # puts "Integer: #{int} divided by: #{num} Is divided evenly #{int % num}"
        if int % num == 0 
          return false
        end
      end
      return true
    end
    prime_with_range(8753)
  end

  # using Ruby's Prime Method
  bm.report("Ruby's implementation") do
    Prime.prime?(8753)
  end
end




# puts Benchmark.measure { prime_with_range(120326515) }
